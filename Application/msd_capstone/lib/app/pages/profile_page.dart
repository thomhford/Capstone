import 'package:flutter/material.dart';

import '../services/logout.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Profile Page'),
            ElevatedButton(
              onPressed: () {
                signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
