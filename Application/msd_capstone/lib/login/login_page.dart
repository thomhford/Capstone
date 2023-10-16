// login_page.dart

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

import '../services/login.dart';
import '../nav_bar/navbar.dart';
import '../components/main_button.dart';
import '../components/user_textfield.dart';
import '../components/square_tile_button.dart';
import '../sign_up/register_page.dart';

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
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  late LoginService _loginService;
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _loginService = LoginService(auth: FirebaseAuth.instance);
    _obscureText = true;
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      try {
        final userCredential = await _loginService.loginUserEmail(
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
            MaterialPageRoute(builder: (context) => NavBar()),
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
    final client = http.Client();
    try {
      final response = await client.post(
        Uri.http('localhost:3000', '/user/register'),
        body: {
          "Hello From App": "Hello From App",
        },
      ).timeout(const Duration(seconds: 5));
      if (response.statusCode == 401) {
        return true;
      }
      return false;
    } on TimeoutException catch (e) {
      logger.e('Timeout Exception: $e');
      return false;
    } on SocketException catch (e) {
      logger.e('Socket Exception: $e');
      return false;
    } catch (e) {
      logger.e('Exception: $e');
      return false;
    } finally {
      client.close();
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
      SnackBar(content: Text('Error: $message')),
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),

                  // logo
                  Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  const SizedBox(height: 20),

                  // login header
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // username textfield
                  UserTextField(
                    controller: _emailController,
                    hintText: 'Email',
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
                    textInputType: TextInputType.emailAddress,
                    focusNode: _emailFocusNode,
                    onSubmitted: (_) {
                      _passwordFocusNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 25),

                  // password textfield
                  UserTextField(
                    controller: _passwordController,
                    hintText: 'Password',
                    obscureText: _obscureText,
                    showVisibilityIcon: true,
                    togglePasswordVisibility: togglePasswordVisibility,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    focusNode: _passwordFocusNode,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 10),

                  // forgot password button
                  GestureDetector(
                    onTap: _forgotPassword,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // signin button
                  MainButton(
                    onTap: _login,
                    buttomName: 'Sign In',
                  ),
                  const SizedBox(height: 50),

                  // Or Continue with...
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Google + Apple signin buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Button
                      SquareTileButton(
                        imagePath: 'assets/images/logos/Google.png',
                        onTap: () =>
                            {_showSuccessSnackBar('Google Signup Button')},
                      ),

                      const SizedBox(width: 10),

                      // Apple button
                      SquareTileButton(
                        imagePath: 'assets/images/logos/apple.png',
                        onTap: () =>
                            {_showSuccessSnackBar("Apple Signup Button")},
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // register button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Haven\'t signed up?',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),

                  // test for connection
                  TextButton(
                      onPressed: () async {
                        try {
                          bool isConnectionSuccessful = await _testConnection();
                          if (isConnectionSuccessful) {
                            _showSuccessSnackBar("Connection Successful");
                          } else {
                            _showErrorSnackBar("Connection Failed");
                          }
                        } catch (e) {
                          _showErrorSnackBar("Connection Failed");
                        }
                      },
                      child: const Text("Test Connection"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
