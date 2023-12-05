// post_card.dart

import 'package:flutter/material.dart';

import 'package:msd_capstone/services/services.dart';
import 'package:msd_capstone/widgets/avatar.dart';

class PostCard extends StatelessWidget{
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Row(
              children: [
                Avatar(
                  photo: post.user.photoUrl,
                  name: '${post.user.firstName} ${post.user.lastName}',
                  avatarSize: 20,
                ),

                Text(
                    '${post.user.firstName} ${post.user.lastName}',
                  style: TextStyle(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}