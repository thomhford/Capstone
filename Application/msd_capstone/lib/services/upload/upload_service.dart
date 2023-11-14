import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './models/models.dart';

final logger = Logger();

User? getCurrentUser() {
  return FirebaseAuth.instance.currentUser;
}

Future<String?> getIdToken() async {
  final user = getCurrentUser();
  if (user != null) {
    final idTokenResult = await user.getIdToken();
    return idTokenResult;
  }
  return null;
}

Future<FileMetadata> uploadFile(File file) async {
  logger.i('uploadFile function called');
  try {
    final idToken = await getIdToken();
    logger.i('idToken: $idToken');

    if (idToken == null) {
      throw Exception('Failed to get authentication token');
    }

    var request = http.MultipartRequest(
      'POST',
      Uri.http(dotenv.env['API_URL'] ?? "localhost:3000", 'upload'),
    );

    // Add headers to the request (including the idToken)
    request.headers['Authorization'] = 'Bearer $idToken';

    // Add the file to the request
    var fileStream = http.ByteStream(file.openRead());
    var fileLength = await file.length();
    var multipartFile = http.MultipartFile(
      'file',
      fileStream,
      fileLength,
      filename: file.path.split('/').last,
    );
    request.files.add(multipartFile);

    // Send the request
    var response = await request.send();
    logger.i('File upload request sent');

    // Wait for the response from the server
    final resp = await http.Response.fromStream(response);

    if (resp.statusCode == 200) {
      logger.i('File uploaded successfully');

      // Decode the JSON data from the response
      final data = json.decode(resp.body);

      // Create a new FileMetadata object from the JSON data
      final fileResponseData = FileMetadata.fromJson(
          data['fileResponseData'] as Map<String, dynamic>);

      return fileResponseData;
    } else {
      logger.e('Error uploading file: ${resp.reasonPhrase}');
      throw Exception('File upload failed: ${resp.reasonPhrase}');
    }
  } catch (e) {
    logger.e('Error uploading file: $e');
    throw Exception('File upload failed: $e');
  }
}

Future<bool> uploadPost(
    File selectedMedia, String title, String content) async {
  logger.i('uploadPost function called');
  try {
    FileMetadata fileMetadata = await uploadFile(selectedMedia);

    PostUpload newPostUpload = PostUpload(
      title: title,
      content: content,
      ids: [fileMetadata.fileId],
    );

    final idToken = await getIdToken();
    var request = http.Request(
      'POST',
      Uri.http(dotenv.env['API_URL'] ?? "localhost:3000", 'post'),
    );
    // Add headers to the request (including the idToken)
    request.headers['Authorization'] = 'Bearer $idToken';
    request.body = jsonEncode(newPostUpload);

    logger.i('Post upload request sent');
    logger.i('request.body: ${request.body}');
    return true;
  } catch (e) {
    logger.e('Error uploading post: $e');
    throw Exception('Post upload failed: $e');
  }
}

class PostUpload {
  final String title;
  final String content;
  final List<int> ids;

  PostUpload({
    required this.title,
    required this.content,
    required this.ids,
  });
}
