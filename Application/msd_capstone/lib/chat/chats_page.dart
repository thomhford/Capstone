// chats_page.dart

import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B202D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'R E C E N T',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  RecentUsers(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentUsers extends StatelessWidget {
  const RecentUsers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
