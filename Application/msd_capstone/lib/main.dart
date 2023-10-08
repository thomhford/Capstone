// main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:msd_capstone/app/pages/camera_page.dart';
import 'package:msd_capstone/app/pages/upload_page.dart';
import 'package:msd_capstone/app/theme/theme.dart';
import 'app/pages/profile_page.dart';
import 'app/pages/search_page.dart';
import 'firebase_options.dart';

import 'app/components/navbar.dart';
import 'app/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            if (user == null) {
              return const LoginPage(); // If the user is not logged in, navigate to LoginPage
            } else {
              return const NavBar(); // If the user is logged in, navigate to NavBar
            }
          }
          return const CircularProgressIndicator(); // Show a loading spinner while waiting for the user data
        },
      ),
    );
  }
}

// For Testing Widgets
class MyAppTest extends StatelessWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      home: const CameraPage(),
    );
  }
}
