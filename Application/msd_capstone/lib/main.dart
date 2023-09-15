// main.dart

import 'package:flutter/material.dart';
import 'package:msd_capstone/app/screens/login_page.dart';
import 'app/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAuthenticated = false;

  void _login() {
    setState(() {
      _isAuthenticated = true;
    });
  }

  void _logout() {
    setState(() {
      _isAuthenticated = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          _isAuthenticated ? NavBar(logout: _logout) : LoginPage(login: _login),
    );
  }
}
