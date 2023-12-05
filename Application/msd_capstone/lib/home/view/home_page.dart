// home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          'Home',
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
