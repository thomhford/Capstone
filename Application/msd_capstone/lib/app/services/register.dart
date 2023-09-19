import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

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
      Uri.parse('localhost/user/register'),
      headers: {'Authorization': 'Bearer $idToken'},
      body: {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      },
    );

    if (response.statusCode == 200) {
      logger.i('User created successfully');
    } else {
      logger.e('Failed to create user');
      throw Exception('Failed to create user');
    }

    return userCredential;
  }
}
