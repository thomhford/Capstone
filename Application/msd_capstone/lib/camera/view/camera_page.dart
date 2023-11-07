import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:msd_capstone/camera/view/camera_button.dart';
import 'package:msd_capstone/camera/view/upload_page.dart';
import 'package:photo_manager/photo_manager.dart';
import '../utilities/media_size_clipper.dart';
import 'package:video_player/video_player.dart';

final logger = Logger();

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  VideoPlayerController? _videoController;
  List<CameraDescription>? cameras;
  bool hasCamera = true; // To track whether the device has a camera
  bool isCameraReady = false;
  FlashMode _flashMode = FlashMode.off; // Initialize flash mode to "off"
  String imagePath = ''; // Path to the captured image
  bool isPictureTaken = false; // To track whether a picture has been taken
  bool isUpload = false;
  bool isRecording = false; // To track whether video recording is in progress
  bool isVideoRecorded =
      false; // To track whether a video is available for playback
  AssetEntity? _lastPhoto;

  @override
  void initState() {
    super.initState();
    initializeCamera();
    fetchLastPhoto();
  }

  Future<void> fetchLastPhoto() async {
    // Request permissions
    final permitted = await PhotoManager.requestPermissionExtend();
    if (permitted.isAuth) {
      // Fetch the most recent asset (photo or video)
      final List<AssetPathEntity> albums =
          await PhotoManager.getAssetPathList(type: RequestType.all);
      final List<AssetEntity> recentAssets =
          await albums.first.getAssetListPaged(page: 0, size: 1);
      if (recentAssets.isNotEmpty) {
        setState(() {
          _lastPhoto = recentAssets.first;
        });
      }
    } else {
      _lastPhoto = const Icon(Icons.photo) as AssetEntity?;
    }
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    if (cameras!.isEmpty) {
      setState(() {
        hasCamera = false;
      });
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
      _videoController?.dispose();
    }
    super.dispose();
  }

  void takePicture() async {
    if (!_controller!.value.isTakingPicture) {
      try {
        final XFile file = await _controller!.takePicture();
        // Path to the captured image
        imagePath = file.path;
        // Update the picture taken status
        isPictureTaken = true;
        setState(() {});
      } catch (e) {
        logger.e("Failed to take a picture: $e");
      }
    }
  }

  void toggleVideoRecording() async {
    if (isRecording) {
      try {
        final XFile file = await _controller!.stopVideoRecording();
        logger.i("Stopped recording video. File path: ${file.path}");
        _videoController = VideoPlayerController.file(File(file.path))
          ..initialize().then((_) {
            setState(() {});
          });
        isRecording = false;
        isPictureTaken =
            false; // Set this to false to differentiate between picture and video
        isVideoRecorded = true;
        setState(() {});
      } catch (e) {
        logger.e("Failed to stop video recording: $e");
      }
    } else {
      // If not recording, start recording
      try {
        await _controller!.startVideoRecording();
        logger.i("Started recording");
        isRecording = true;
        setState(() {});
      } catch (e) {
        logger.e("Failed to start video recording: $e");
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
    if (_flashMode == FlashMode.off) {
      _flashMode = FlashMode.always;
    } else if (_flashMode == FlashMode.always) {
      _flashMode = FlashMode.auto;
    } else {
      _flashMode = FlashMode.off;
    }
    _controller!.setFlashMode(_flashMode); // Set flash mode
    setState(() {});
  }

  Widget buildCameraPreview() {
    Widget lastPhotoThumbnail = _lastPhoto != null
        ? FutureBuilder<Uint8List?>(
            future: _lastPhoto!.thumbnailData,
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.data != null) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UploadPage(),
                      ),
                    );
                  },
                  child: Image.memory(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
        : const Icon(Icons.photo,
            size: 50); // Placeholder icon if _lastPhoto is null
    final mediaSize = MediaQuery.of(context).size;
    var scale = _controller!.value.aspectRatio * mediaSize.aspectRatio;
    // Ensure scale does not shrink the camera preview
    if (scale < 1) scale = 1 / scale;
    return Stack(
      children: [
        ClipRect(
          clipper: MediaSizeClipper(mediaSize),
          child: Transform.scale(
            scale: scale,
            alignment: Alignment.topCenter,
            child: CameraPreview(_controller!),
          ),
        ),
        Positioned(
          bottom: 16,
          left: mediaSize.width / 2 -
              38, // 38 = 76 / 2. 76 is the width of the button
          child: CameraButton(
            onPressed: takePicture,
            // onLongPress: toggleVideoRecording,
            // onLongPressEnd: toggleVideoRecording,
          ),
        ),
        Positioned(
          bottom: 25,
          left: 25,
          child: Container(
            width: 50, // Set your desired width for the square button
            height: 50, // Set your desired height for the square button
            decoration: BoxDecoration(
              color: Colors.white, // Or any other color for the button
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: lastPhotoThumbnail,
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
              _flashMode == FlashMode.always
                  ? CupertinoIcons.bolt_badge_a_fill
                  : _flashMode == FlashMode.auto
                      ? CupertinoIcons.bolt_fill
                      : CupertinoIcons.bolt_slash_fill,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildImagePreview() {
    return Stack(
      children: [
        Image.file(
          File(imagePath),
          fit:
              BoxFit.cover, // Display the image as if it were the CameraPreview
        ),
        Positioned(
          top: 16,
          left: 16,
          child: FloatingActionButton(
            // cancel button, return to camera
            onPressed: () {
              // Reset the path to the captured image
              imagePath = '';
              // Reset the picture taken status
              isPictureTaken = false;
              setState(() {});
            },
            child: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.arrow_down_to_line,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 36,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UploadPage(filePath: imagePath),
                ),
              );
            },
            child: const Text(
              'Upload',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Widget buildMediaPreview() {
  //   if (isVideoRecorded) {
  //     return Stack(
  //       children: <Widget>[
  //         Center(
  //           child: AspectRatio(
  //             aspectRatio: _videoController!.value.aspectRatio,
  //             child: VideoPlayer(_videoController!),
  //           ),
  //         ),
  //       ],
  //     );
  //   }
  //   if (isPictureTaken) {
  //     return buildImagePreview();
  //   }
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    if (!hasCamera) {
      return const Center(child: UploadPage());
    } else if (!isCameraReady) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        body: SafeArea(
          child: isPictureTaken ? buildImagePreview() : buildCameraPreview(),
        ),
      );
    }
  }
}
