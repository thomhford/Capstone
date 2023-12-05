// post_creation_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:msd_capstone/services/upload/upload_service.dart';
import 'package:video_player/video_player.dart';

class PostCreationPage extends StatefulWidget {
  final File selectedMedia;

  const PostCreationPage({super.key, required this.selectedMedia});

  @override
  _PostCreationPageState createState() => _PostCreationPageState();
}

class _PostCreationPageState extends State<PostCreationPage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode contentFocusNode = FocusNode();
  VideoPlayerController? _videoPlayerController;

  @override
  void initState() {
    super.initState();
    if (_isVideoFile(widget.selectedMedia)) {
      _videoPlayerController = VideoPlayerController.file(widget.selectedMedia)
        ..initialize().then((_) {
          if (mounted) {
            setState(() {});
          }
        });
    }
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

  bool _isVideoFile(File file) {
    String extension = file.path.split('.').last.toLowerCase();
    return extension == 'mp4' || extension == 'mov' || extension == 'avi';
  }

  Widget _displaySelectedMedia() {
    double screenHeight = MediaQuery.of(context).size.height;
    double mediaHeight = screenHeight / 3;
    if (_isVideoFile(widget.selectedMedia)) {
      return _videoPlayerController != null &&
              _videoPlayerController!.value.isInitialized
          ? Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: mediaHeight,
                  child: AspectRatio(
                    aspectRatio: _videoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController!),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      // If the video is playing, pause it.
                      if (_videoPlayerController!.value.isPlaying) {
                        _videoPlayerController!.pause();
                      } else {
                        // If the video is paused, play it.
                        _videoPlayerController!.play();
                      }
                    });
                  },
                  child: Icon(
                    _videoPlayerController!.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator());
    } else {
      return SizedBox(
        height: mediaHeight,
        child: Image.file(
          widget.selectedMedia,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  Future<void> _uploadPost() async {
    // logger.i('Uploading post');
    try {
      await uploadPost(
          widget.selectedMedia, titleController.text, contentController.text);
      // logger.i('Post uploaded successfully');
      Navigator.pop(context); // Go back to the previous page
    } catch (e) {
      logger.e('Error uploading file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          'Create Post',
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: titleController,
                    focusNode: titleFocusNode,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Title',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                if (titleFocusNode.hasFocus)
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      titleController.clear();
                      titleFocusNode.unfocus();
                    },
                  ),
              ],
            ),
            const Divider(color: Colors.white),
            const SizedBox(height: 16),
            _displaySelectedMedia(),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: contentController,
                    focusNode: contentFocusNode,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Content',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                if (contentFocusNode.hasFocus)
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      contentController.clear();
                      contentFocusNode.unfocus();
                    },
                  ),
              ],
            ),
            const Divider(color: Colors.white),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _uploadPost,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
