import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'dart:convert';

final logger = Logger();

class RegistrationService {
  final FirebaseAuth _auth;
  final http.Client _client;

  RegistrationService({required FirebaseAuth auth, required http.Client client})
      : _auth = auth,
        _client = client;

  Future<UserCredential> registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final idToken = await userCredential.user!.getIdToken();

    final response = await _client.post(
      Uri.http('localhost:3000', '/user/register'),
      headers: {
        'Authorization': 'Bearer $idToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      }),
    );

    if (response.statusCode == 200) {
      logger.i('User created successfully');
      final displayName = '$firstName $lastName';
      await userCredential.user!.updateDisplayName(displayName);
      logger.i('Display name set successfully');
    } else {
      logger.e('Failed to create user');
      throw Exception('Failed to create user');
    }

    return userCredential;
  }
}
