// post_view.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String avatarUrl;
  final String username;
  final String postImageUrl;

  const Post({
    Key? key,
    required this.avatarUrl,
    required this.username,
    required this.postImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(postImageUrl),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                username,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                // Slide up menu where I can delete my post
              },
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        CachedNetworkImage(imageUrl: postImageUrl),
      ],
    );
  }
}
