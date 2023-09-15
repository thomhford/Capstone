import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final void Function() logout;

  const ProfilePage({Key? key, required this.logout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile Page'),
            ElevatedButton(
              onPressed: () {
                logout();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
