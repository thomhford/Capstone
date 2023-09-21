import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

import '../services/login.dart';
import '../components/navbar.dart';
import '../components/main_button.dart';
import '../components/main_textfield.dart';
import '../components/square_tile_button.dart';
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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 25),

              // logo
              const Icon(
                Icons.account_circle,
                size: 100,
              ),
              const SizedBox(height: 20),

              // login header
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 25),

              // username textfield
              MainTextField(
                controller: _emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 25),

              // password textfield
              MainTextField(
                controller: _passwordController,
                hintText: 'Password',
                obscureText: _obscureText,
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
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // signin button
              MainButton(
                onTap: _login,
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
                    onTap: () async {
                      bool isConnectionSuccessful = await _testConnection();
                      if (isConnectionSuccessful) {
                        _showSuccessSnackBar("Connection Successful");
                      } else {
                        _showErrorSnackBar("Connection Failed");
                      }
                    },
                  ),

                  const SizedBox(width: 10),

                  // Apple button
                  SquareTileButton(
                    imagePath: 'assets/images/logos/apple.png',
                    onTap: () async {
                      bool isConnectionSuccessful = await _testConnection();
                      if (isConnectionSuccessful) {
                        _showSuccessSnackBar("Connection Successful");
                      } else {
                        _showErrorSnackBar("Connection Failed");
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // register button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haven\'t signed up?',
                    style: TextStyle(color: Colors.grey[700]),
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
              )
            ]),
          ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   } else if (!RegExp(
//                           r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
//                       .hasMatch(value)) {
//                     return 'Please enter a valid email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscureText ? Icons.visibility : Icons.visibility_off,
//                     ),
//                     onPressed: _togglePasswordVisibility,
//                   ),
//                 ),
//                 obscureText: _obscureText,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: _login,
//                 child: const Text('Login'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const RegisterPage(),
//                     ),
//                   );
//                 },
//                 child: const Text('Register'),
//               ),
//               ElevatedButton(
//                 onPressed: _forgotPassword,
//                 child: const Text('Forgot Password?'),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   bool isConnectionSuccessful = await _testConnection();
//                   if (isConnectionSuccessful) {
//                     _showSuccessSnackBar("Connection Successful");
//                   } else {
//                     _showErrorSnackBar("Connection Failed");
//                   }
//                 },
//                 child: const Text("Test Connection"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
