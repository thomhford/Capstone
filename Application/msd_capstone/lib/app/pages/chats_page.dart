// chats_page.dart

import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats Page'),
      ),
      body: const Center(
        child: Text('Chats Page'),
      ),
    );
  }
}
