// main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:msd_capstone/sign_up/register_page.dart';
import 'firebase_options.dart';
import 'components/navbar.dart';
import 'login/login_page.dart';
import 'theme.dart';

import 'camera/camera_page.dart';
import 'post/upload_page.dart';
import 'profile/profile_page.dart';
import 'search/search_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyAppTest());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: lightMode,
//       darkTheme: darkMode,
//       home: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
//           if (snapshot.connectionState == ConnectionState.active) {
//             final User? user = snapshot.data;
//             if (user == null) {
//               return const LoginPage(); // If the user is not logged in, navigate to LoginPage
//             } else {
//               return const NavBar(); // If the user is logged in, navigate to NavBar
//             }
//           }
//           return const CircularProgressIndicator(); // Show a loading spinner while waiting for the user data
//         },
//       ),
//     );
//   }
// }

// For Testing Widgets
class MyAppTest extends StatelessWidget {
  const MyAppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      home: const RegisterPage(),
    );
  }
}

// import 'package:authentication_repository/authentication_repository.dart';
// import 'package:bloc/bloc.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'package:flutter/widgets.dart';
// import 'app/app.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Bloc.observer = const AppBlocObserver();

//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   final authenticationRepository = AuthenticationRepository();
//   await authenticationRepository.user.first;

//   runApp(App(authenticationRepository: authenticationRepository));
// }
