import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import 'login_page.dart';

var logger = Logger();

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _obscureText = true;

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        final userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        logger.i('${userCredential.user!.email} registered');
        _showSuccessSnackBar('${userCredential.user!.email} registered');

        // Get the ID token of the signed-in user
        final idToken = await userCredential.user!.getIdToken();

        // Send the firstName, lastName, email and ID token to backend
        final response = await http.post(
          Uri.parse('localhost/user/register'),
          headers: {'Authorization': 'Bearer $idToken'},
          body: {
            'firstName': _firstNameController.text,
            'lastName': _lastNameController.text,
            'email': _emailController.text,
          },
        );

        if (response.statusCode == 200) {
          // If the server returns a 200 OK response, parse the JSON.
          logger.i('User created successfully');
          // Check if the widget is still mounted before navigating
          if (mounted) {
            // Navigate to the login page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        } else {
          // If the server returns an unexpected response, throw an error.
          logger.e('Failed to create user');
          throw Exception('Failed to create user');
        }
      } on FirebaseAuthException catch (e) {
        logger.e(e.message);
        _showErrorSnackBar(e.message);
      }
    }
  }

  void _showErrorSnackBar(String? message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to register: $message')),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email';
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
                  // Firebase Authentication Password Requirements:
                  // Password must be at least 6 characters long, include an uppercase letter, a lowercase letter and a number
                  // Password cannot include spaces or special characters
                  else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                    return 'Password must include at least one uppercase letter';
                  } else if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                    return 'Password must include at least one lowercase letter';
                  } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                    return 'Password must include at least one number';
                  } else if (RegExp(r'(\s|[!@#$%^&*(),.?":{}|<>])')
                      .hasMatch(value)) {
                    return 'Password cannot include spaces or special characters';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration:
                    const InputDecoration(labelText: 'Confirm Password'),
                obscureText: _obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: _register,
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
