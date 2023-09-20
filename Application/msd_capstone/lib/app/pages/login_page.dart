import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

import '../services/login.dart';
import '../widgets/navbar.dart';
import 'register_page.dart';

var logger = Logger();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late LoginService _loginService;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _loginService = LoginService(auth: FirebaseAuth.instance);
  }

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      try {
        final userCredential = await _loginService.loginUser(
          email: _emailController.text,
          password: _passwordController.text,
        );
        logger.i('${userCredential.user!.email} signed in');
        _showSuccessSnackBar('${userCredential.user!.email} signed in');

        if (mounted) {
          // Navigate to the NavBar
          Navigator.pushReplacement(
            // cannot go back to login page after login
            context,
            MaterialPageRoute(builder: (context) => const NavBar()),
          );
        }
      } on FirebaseAuthException catch (e) {
        logger.e(e.message);
        _showErrorSnackBar(e.message);
      } catch (e) {
        logger.e(e.toString());
        _showErrorSnackBar(e.toString());
      }
    }
  }

  Future<bool> _testConnection() async {
    try {
      final response = await http.post(
        Uri.http('10.0.2.2:3000', '/user/register'),
        body: {
          "Hello From App": "Hello From App",
        },
      );
      if (response.statusCode == 401) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> _forgotPassword() async {
    if (_emailController.text.isNotEmpty) {
      try {
        await _loginService.sendPasswordResetEmail(
            email: _emailController.text);
        logger.i('Password reset email sent');
        _showSuccessSnackBar('Password reset email sent');
      } on FirebaseAuthException catch (e) {
        logger.e(e.message);
        _showErrorSnackBar(e.message);
      }
    } else {
      _showErrorSnackBar('Please enter your email');
    }
  }

  void _showErrorSnackBar(String? message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Something when wrong: $message')),
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
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
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
              ElevatedButton(
                onPressed: () async {
                  bool isConnectionSuccessful = await _testConnection();
                  if (isConnectionSuccessful) {
                    _showSuccessSnackBar("Connection Successful");
                  } else {
                    _showErrorSnackBar("Connection Failed");
                  }
                },
                child: const Text("Test Connection"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
