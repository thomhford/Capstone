import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

final logger = Logger();

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _file;
  final picker = ImagePicker();

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

  Future uploadFile() async {
    const url = 'http://localhost:3000/upload';
    final request = http.MultipartRequest('POST', Uri.parse(url));
    final file = await http.MultipartFile.fromPath('file', _file!.path);
    request.files.add(file);
    final response = await request.send();
    if (response.statusCode == 200) {
      logger.i('File uploaded successfully');
    } else {
      logger.e('File upload failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Upload'),
      ),
      body: SafeArea(
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
                  onPressed: _file != null ? () => uploadFile() : null,
                  child: const Text('Upload File'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
