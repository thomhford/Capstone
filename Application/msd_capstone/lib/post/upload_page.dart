import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:video_player/video_player.dart';

import '../services/upload/upload_service.dart';

final logger = Logger();

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  UploadPageState createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage> {
  File? _file;
  final picker = ImagePicker();
  VideoPlayerController? _videoPlayerController;

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _file = File(pickedFile.path);
      } else {
        logger.e('No image selected.');
      }
    });
  }

  Future getVideo() async {
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _file = File(pickedFile.path);
      } else {
        logger.e('No video selected.');
      }
    });
  }

  Future getMedia() async {
    final pickedFile = await picker.pickMedia();
    setState(() {
      if (pickedFile != null) {
        _file = File(pickedFile.path);
      } else {
        logger.e('No media selected.');
      }
    });
  }

  Future<void> _uploadFile() async {
    try {
      await uploadFile(_file!);
      logger.i('File uploaded successfully');
    } catch (e) {
      logger.e('Error uploading file: $e');
      throw Exception('File upload failed: $e');
    }
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Upload'),
      ),
      body: SafeArea(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: getImage,
                    child: const Text('Pick Image'),
                  ),
                  ElevatedButton(
                    onPressed: getVideo,
                    child: const Text('Pick Video'),
                  ),
                  ElevatedButton(
                    onPressed: getMedia,
                    child: const Text('Pick Media'),
                  ),
                  ElevatedButton(
                    onPressed: _file != null ? () => _uploadFile() : null,
                    child: const Text('Upload File'),
                  ),
                ],
              ),
              if (_file != null)
                Expanded(
                  child: FutureBuilder(
                    future: _uploadFile(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child:
                              Text('Error uploading file: ${snapshot.error}'),
                        );
                      } else {
                        return _videoPlayerController != null
                            ? AspectRatio(
                                aspectRatio:
                                    _videoPlayerController!.value.aspectRatio,
                                child: VideoPlayer(_videoPlayerController!),
                              )
                            : Image.file(_file!);
                      }
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
