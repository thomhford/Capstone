import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

Future<void> uploadFile(File file) async {
  try {
    final idToken = await getIdToken();

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

    if (response.statusCode == 200) {
      logger.i('File uploaded successfully');
    } else {
      logger.e('Error uploading file: ${response.reasonPhrase}');
      throw Exception('File upload failed: ${response.reasonPhrase}');
    }
  } catch (e) {
    logger.e('Error uploading file: $e');
    throw Exception('File upload failed: $e');
  }
}
