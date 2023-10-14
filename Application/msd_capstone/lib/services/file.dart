// file.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class FileMetadata {
  final String fileName;
  final String originalName;
  final String mimeType;
  final int fileSize;
  final DateTime uploadDate;
  final String filePath;

  FileMetadata({
    required this.fileName,
    required this.originalName,
    required this.mimeType,
    required this.fileSize,
    required this.uploadDate,
    required this.filePath,
  });

  factory FileMetadata.fromJson(Map<String, dynamic> json) {
    return FileMetadata(
      fileName: json['file_name'],
      originalName: json['original_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
      uploadDate: DateTime.parse(json['upload_date']),
      filePath: json['file_path'],
    );
  }
}

class FileService {
  final FirebaseAuth _auth;
  final http.Client _client;

  FileService({required FirebaseAuth auth, required http.Client client})
      : _auth = auth,
        _client = client;

  Future<List<FileMetadata>> fetchFiles() async {
    try {
      final User? user = _auth.currentUser;
      if (user == null) {
        logger.e('User not signed in.');
        throw Exception('User not signed in.');
      }

      final idTokenResult = await user.getIdTokenResult();

      final response = await _client.post(
        Uri.http('localhost:3000', '/file'),
        headers: {
          'Authorization': 'Bearer ${idTokenResult.token}',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        logger.i('Successfully loaded files');
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => FileMetadata.fromJson(item)).toList();
      } else {
        logger.e('Failed to load files');
        throw Exception('Failed to load files');
      }
    } catch (error) {
      logger.e('Error fetching files: $error');
      throw Exception('Failed to load files: $error');
    }
  }
}
