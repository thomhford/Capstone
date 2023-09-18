import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUp(String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      logger.e(e.toString());
      return null;
    }
  }

  Future<User?> signIn(String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      logger.e(e.toString());
      return null;
    }
  }
}
