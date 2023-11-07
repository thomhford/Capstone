import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:video_player/video_player.dart';
import 'package:photo_manager/photo_manager.dart';

import 'package:msd_capstone/services/upload.dart';

final logger = Logger();

class UploadPage extends StatefulWidget {
  final String? filePath;
  const UploadPage({Key? key, this.filePath}) : super(key: key);

  @override
  UploadPageState createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage> {
  File? _file;
  final picker = ImagePicker();
  VideoPlayerController? _videoPlayerController;
  List<AssetEntity>? mediaList = [];

  @override
  void initState() {
    super.initState();
    _fetchMedia();
    if (widget.filePath != null) {
      _file = File(widget.filePath!);
      if (_file!.path.endsWith('.mp4')) {
        _videoPlayerController = VideoPlayerController.file(_file!)
          ..initialize().then(
            (_) {
              setState(() {});
            },
          );
      }
    }
  }

  Future<void> _fetchMedia() async {
    final albums = await PhotoManager.getAssetPathList(onlyAll: true);
    final recentAlbum = albums.first;
    final recentMedia = await recentAlbum.getAssetListPaged(page: 0, size: 100);

    setState(
      () {
        mediaList = recentMedia;
      },
    );
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
      body: Column(
        children: <Widget>[
          // Top half of the screen for previewing the selected media
          Expanded(
            flex: 1, // Takes half of the screen space
            child: Center(
              child: _file != null
                  ? _previewSelectedMedia()
                  : const Text('No media selected'),
            ),
          ),
          // Bottom half of the screen for the grid of thumbnails
          Expanded(
            flex: 1, // Takes the remaining half of the screen space
            child: _buildGridView(),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Adjust the number of columns as needed
        childAspectRatio: 1, // Ensures the grid tiles are square
      ),
      itemCount: mediaList?.length,
      itemBuilder: (context, index) {
        var media = mediaList?[index];
        return FutureBuilder<Uint8List?>(
          future: media!.thumbnailData,
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData) {
              return InkWell(
                onTap: () => _handleMediaTap(media),
                child: AspectRatio(
                  aspectRatio:
                      1, // Ensures the image is cropped to a 1:1 aspect ratio
                  child: ClipRect(
                    child: Image.memory(
                      snapshot.data!,
                      fit: BoxFit
                          .cover, // Ensures the image fills the cropped area
                    ),
                  ),
                ),
              );
            }

            return const Placeholder();
          },
        );
      },
    );
  }

  Future<void> _initializeVideoPlayer() async {
    if (_file != null && _isVideoFile(_file!)) {
      // Dispose of the old controller if there is one.
      await _videoPlayerController?.dispose();
      // Create a new controller with the new file.
      _videoPlayerController = VideoPlayerController.file(_file!)
        ..initialize().then((_) {
          // Ensure the widget is still mounted before calling setState.
          if (mounted) {
            setState(() {});
          }
        });
    }
  }

  bool _isVideoFile(File file) {
    // Here we check the extension of the file to determine if it's a video.
    String extension = file.path.split('.').last.toLowerCase();
    return extension == 'mp4' || extension == 'mov' || extension == 'avi';
  }

  Widget _previewSelectedMedia() {
    if (_file != null) {
      if (_isVideoFile(_file!)) {
        // Call the initialize function when changing the video.
        _initializeVideoPlayer();

        // Ensure the VideoPlayerController is initialized before displaying the video.
        return _videoPlayerController != null &&
                _videoPlayerController!.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController!.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController!),
              )
            : const Center(child: CircularProgressIndicator());
      } else {
        // If it's not a video, we assume it's an image and display it.
        return Image.file(_file!);
      }
    } else {
      // If no file is selected, display a placeholder.
      return const Text('Please select a media file.');
    }
  }

  void _handleMediaTap(AssetEntity media) async {
    // Use the AssetEntity to get the file associated with the media.
    final File? mediaFile = await media.file;
    if (mediaFile != null) {
      setState(() {
        // Update the _file variable with the selected media file.
        _file = mediaFile;
        // If the selected media is a video, initialize the video player controller.
        if (_isVideoFile(mediaFile)) {
          _initializeVideoPlayer();
        } else {
          // If it's an image, set the video player controller to null.
          _videoPlayerController?.dispose();
          _videoPlayerController = null;
        }
      });
    }
  }
}
