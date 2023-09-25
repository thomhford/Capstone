import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../components/main_button.dart';
import '../components/user_textfield.dart';
import '../components/square_tile_button.dart';
import '../services/register.dart';
import 'login_page.dart';

final logger = Logger();

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late RegistrationService _registrationService;
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _registrationService = RegistrationService(
      auth: FirebaseAuth.instance,
      client: http.Client(),
    );
    _obscureText = true;
  }

  @override
  void dispose() {
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        final userCredential = await _registrationService.registerUser(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
          password: _passwordController.text,
        );
        logger.i('${userCredential.user!.email} registered');
        _showSuccessSnackBar('${userCredential.user!.email} registered');

        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
      } on FirebaseAuthException catch (e) {
        logger.e(e.message);
        _showErrorSnackBar(e.message);
      } on Exception catch (e) {
        logger.e(e.toString());
        _showErrorSnackBar(e.toString());
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

  void togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Stack(children: [
          SingleChildScrollView(
              child: Center(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),

                          // logo
                          const Icon(
                            Icons.account_circle,
                            size: 100,
                          ),
                          const SizedBox(height: 10),

                          // Register header
                          Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                          const SizedBox(height: 25),

                          // first name textfield
                          UserTextField(
                            controller: _firstNameController,
                            hintText: 'First Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              return null;
                            },
                            textInputType: TextInputType.name,
                            focusNode: _firstNameFocusNode,
                            onSubmitted: (_) {
                              _lastNameFocusNode.requestFocus();
                            },
                          ),
                          const SizedBox(height: 15),

                          // last name textfield
                          UserTextField(
                            controller: _lastNameController,
                            hintText: 'Last Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your last name';
                              }
                              return null;
                            },
                            textInputType: TextInputType.name,
                            focusNode: _lastNameFocusNode,
                            onSubmitted: (_) {
                              _emailFocusNode.requestFocus();
                            },
                          ),
                          const SizedBox(height: 15),

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
                          const SizedBox(height: 15),

                          // password textfield
                          UserTextField(
                            controller: _passwordController,
                            hintText: 'Password',
                            obscureText: _obscureText,
                            togglePasswordVisibility: togglePasswordVisibility,
                            showVisibilityIcon: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              } else if (!RegExp(r'(?=.*[A-Z])')
                                  .hasMatch(value)) {
                                return 'Password must include at least one uppercase letter';
                              } else if (!RegExp(r'(?=.*[a-z])')
                                  .hasMatch(value)) {
                                return 'Password must include at least one lowercase letter';
                              } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                                return 'Password must include at least one number';
                              } else if (RegExp(r'(\s|[!@#$%^&*(),.?":{}|<>])')
                                  .hasMatch(value)) {
                                return 'Password cannot include spaces or special characters';
                              }
                              return null;
                            },
                            focusNode: _passwordFocusNode,
                            onSubmitted: (_) {
                              _confirmPasswordFocusNode.requestFocus();
                            },
                          ),
                          const SizedBox(height: 15),

                          // confirm password textfield
                          UserTextField(
                            controller: _confirmPasswordController,
                            hintText: 'Confirm Password',
                            obscureText: _obscureText,
                            togglePasswordVisibility: togglePasswordVisibility,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              } else if (value != _passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                            focusNode: _confirmPasswordFocusNode,
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(height: 25),

                          // signup button
                          MainButton(
                            onTap: _register,
                            buttomName: 'Sign Up',
                          ),
                          const SizedBox(height: 25),

                          // Or Sign Up with...
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 0.5,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    'Or sign up with',
                                    style: TextStyle(color: Colors.grey[700]),
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
                                onTap: () => {
                                  _showSuccessSnackBar('Google Signup Button')
                                },
                              ),

                              const SizedBox(width: 10),

                              // Apple button
                              SquareTileButton(
                                imagePath: 'assets/images/logos/apple.png',
                                onTap: () => {
                                  _showSuccessSnackBar("Apple Signup Button")
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                        ],
                      )))),
          const Row(
            children: [
              SizedBox(width: 25),
              BackButton(),
            ],
          ),
        ])));
  }
}
