// post_creation_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:msd_capstone/services/upload/upload_service.dart';

class PostCreationPage extends StatefulWidget {
  final File selectedMedia;

  const PostCreationPage({Key? key, required this.selectedMedia}) : super(key: key);

  @override
  _PostCreationPageState createState() => _PostCreationPageState();
}

class _PostCreationPageState extends State<PostCreationPage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  // Future<void> _uploadFile() async {
  //   try {
  //     await uploadFile(widget.selectedMedia, titleController.text, contentController.text);
  //     Navigator.pop(context); // Go back to the previous page
  //   } catch (e) {
  //     print('Error uploading file: $e');
  //   }
  // }

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
              onPressed: (){}, //_uploadFile,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}