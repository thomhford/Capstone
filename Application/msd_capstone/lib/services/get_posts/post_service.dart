import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'models/post.dart';

final logger = Logger();

class PostService {
  final FirebaseAuth _auth;
  final http.Client _client;

  PostService({required FirebaseAuth auth, required http.Client client})
      : _auth = auth,
        _client = client;

  Future<List<Post>> fetchAllPosts() async {
    try {
      final User? user = _auth.currentUser;
      if (user == null) {
        logger.e('User not signed in.');
        throw Exception('User not signed in.');
      }

      final idTokenResult = await user.getIdTokenResult();

      final response = await _client.get(
        Uri.http(dotenv.env['API_URL'] ?? "localhost:3000", '/post'),
        headers: {
          'Authorization': 'Bearer ${idTokenResult.token}',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // logger.i('Successfully loaded files');
        // logger.i('All Posts JSON ${response.body}');
        final List<dynamic> data = json.decode(response.body);
        // logger.i('All Posts List $data');
        return data.map((item) => Post.fromJson(item)).toList();
      } else {
        logger.e('Failed to load files');
        throw Exception('Failed to load files');
      }
    } catch (error) {
      logger.e('Error fetching files: $error');
      throw Exception('Failed to load files: $error');
    }
  }

  Future<List<Post>> fetchUserPosts() async {
    try {
      final User? user = _auth.currentUser;
      if (user == null) {
        logger.e('User not signed in.');
        throw Exception('User not signed in.');
      }

      final idTokenResult = await user.getIdTokenResult();

      final response = await _client.get(
        Uri.http(dotenv.env['API_URL'] ?? "localhost:3000", '/user_post'),
        headers: {
          'Authorization': 'Bearer ${idTokenResult.token}',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        // logger.i('Successfully loaded files');
        final List<dynamic> data = json.decode(response.body);
        return data.map((item) => Post.fromJson(item)).toList();
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

