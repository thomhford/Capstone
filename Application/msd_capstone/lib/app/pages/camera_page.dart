import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import '../utilities/media_size_clipper.dart';

final logger = Logger();

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  bool isCameraReady = false;
  FlashMode flashMode = FlashMode.off; // Initialize flash mode to "off"
  String imagePath = ''; // Path to the captured image
  bool isPictureTaken = false; // To track whether a picture has been taken

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    if (cameras!.isEmpty) {
      logger.e('No cameras available');
      return;
    }
    _controller = CameraController(cameras![0], ResolutionPreset.veryHigh);
    try {
      await _controller!.initialize();
      if (mounted) {
        setState(() {
          isCameraReady = true;
        });
      }
    } catch (e) {
      logger.e("Failed to initialize camera: $e");
    }
  }

  @override
  void dispose() {
    if (cameras!.isNotEmpty) {
      _controller!.dispose();
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.dispose();
  }

  void takePicture() async {
    if (!_controller!.value.isTakingPicture) {
      try {
        final XFile file = await _controller!.takePicture();
        // Update the path to the captured image
        imagePath = file.path;
        // Update the picture taken status
        isPictureTaken = true;
        setState(() {});
      } catch (e) {
        logger.e("Failed to take a picture: $e");
      }
    }
  }

  void toggleCamera() {
    final isFront =
        _controller!.description.lensDirection == CameraLensDirection.front;
    final newCamera = isFront ? cameras![0] : cameras![1];
    _controller!.dispose();
    _controller = CameraController(newCamera, ResolutionPreset.veryHigh);
    _controller!.initialize().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  void toggleFlash() {
    if (flashMode == FlashMode.off) {
      flashMode = FlashMode.always;
    } else if (flashMode == FlashMode.always) {
      flashMode = FlashMode.auto;
    } else {
      flashMode = FlashMode.off;
    }
    _controller!.setFlashMode(flashMode); // Set flash mode
    setState(() {});
  }

  Widget buildCameraPreview() {
    final mediaSize = MediaQuery.of(context).size;
    var scale = _controller!.value.aspectRatio * mediaSize.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return ClipRect(
      clipper: MediaSizeClipper(mediaSize),
      child: Transform.scale(
        scale: scale,
        alignment: Alignment.topCenter,
        child: CameraPreview(_controller!),
      ),
    );
  }

  Widget buildCapturedImagePreview() {
    return Image.file(
      File(imagePath),
      fit: BoxFit.cover, // Display the image as if it were the CameraPreview
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);

    if (cameras!.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    } else if (!isCameraReady) {
      return const Center(child: CircularProgressIndicator());
    } else {
      final mediaSize = MediaQuery.of(context).size;
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              isPictureTaken
                  ? buildCapturedImagePreview()
                  : buildCameraPreview(),
              Positioned(
                bottom: 16,
                left: mediaSize.width / 2 - 25,
                child: FloatingActionButton(
                  onPressed: takePicture,
                  child: const Icon(
                    CupertinoIcons.camera,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: toggleCamera,
                  child: const Icon(CupertinoIcons.switch_camera),
                ),
              ),
              Positioned(
                top: 64.0,
                right: 16.0,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: toggleFlash,
                  child: Icon(
                    flashMode == FlashMode.always
                        ? CupertinoIcons.bolt_badge_a_fill
                        : flashMode == FlashMode.auto
                            ? CupertinoIcons.bolt_fill
                            : CupertinoIcons.bolt_slash_fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
