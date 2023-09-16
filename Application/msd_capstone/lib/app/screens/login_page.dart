import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/navbar.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _obscureText = true;

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      try {
        final userCredential = await _signInWithFirebase();
        _showSuccessSnackBar('${userCredential.user!.email} signed in');

        // Navigate to the NavBar
        Navigator.pushReplacement(
          // cannot go back to login page after login
          context,
          MaterialPageRoute(builder: (context) => const NavBar()),
        );
      } on FirebaseAuthException catch (e) {
        _showErrorSnackBar(e.message);
      }
    }
  }

  Future<void> _forgotPassword() async {
    if (_emailController.text.isNotEmpty) {
      try {
        await _auth.sendPasswordResetEmail(email: _emailController.text);
        _showSuccessSnackBar('Password reset email sent');
      } on FirebaseAuthException catch (e) {
        _showErrorSnackBar(e.message);
      }
    } else {
      _showErrorSnackBar('Please enter your email');
    }
  }

  Future<UserCredential> _signInWithFirebase() {
    return _auth.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  void _showErrorSnackBar(String? message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to sign in: $message')),
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
            obscureText: _obscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
            child: const Text('Register'),
          ),
          ElevatedButton(
            onPressed: _forgotPassword,
            child: const Text('Forgot Password?'),
          ),
        ],
      ),
    );
  }
}
