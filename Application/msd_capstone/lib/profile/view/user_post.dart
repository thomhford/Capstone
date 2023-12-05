// user_post.dart

import 'package:flutter/material.dart';

import 'package:msd_capstone/services/services.dart';
import 'package:msd_capstone/widgets/widgets.dart';
import '../../global/global.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Column(
        children: [
          PostCard(post: post),
          const SizedBox(height: 20),
          // GestureDetector(
          //   onTap: () {
          //     // postService.deletePost(post.id);
          //     Navigator.pop(context);
          //   },
          //   child: Container(
          //     padding: const EdgeInsets.all(20),
          //     margin: const EdgeInsets.symmetric(horizontal: 25),
          //     decoration: BoxDecoration(
          //       color: theme.colorScheme.primary,
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //     child: Center(
          //       child: Text(
          //         'Delete Post',
          //         style: TextStyle(
          //           color: theme.colorScheme.onPrimary,
          //           fontFamily: 'Quicksand',
          //           fontSize: 20,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
