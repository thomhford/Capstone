// main.dart

/// *******************-TESTING OF WIDGETS-**********************
// import 'package:flutter/material.dart';
// import 'package:msd_capstone/chat/chats_page.dart';
// import 'theme.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyAppTest());
// }

// // For Testing Widgets
// class MyAppTest extends StatelessWidget {
//   const MyAppTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: lightMode,
//       darkTheme: darkMode,
//       home: const ChatsPage(),
//     );
//   }
// }

/// *******************-Main Application-**********************
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'firebase_options.dart';
import 'package:flutter/widgets.dart';
import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(
    fileName: '.env',
  );

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  runApp(App(authenticationRepository: authenticationRepository));
}
