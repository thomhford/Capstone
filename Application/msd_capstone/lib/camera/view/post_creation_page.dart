// post_creation_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:msd_capstone/services/upload/upload_service.dart';

class PostCreationPage extends StatefulWidget {
  final File selectedMedia;

  const PostCreationPage({super.key, required this.selectedMedia});

  @override
  _PostCreationPageState createState() => _PostCreationPageState();
}

class _PostCreationPageState extends State<PostCreationPage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  Future<void> _uploadPost() async {
    // logger.i('Uploading post');
    try {
      await uploadPost(widget.selectedMedia, titleController.text, contentController.text);
      // logger.i('Post uploaded successfully');
      Navigator.pop(context); // Go back to the previous page
    } catch (e) {
      logger.e('Error uploading file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
              ),
            ),
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