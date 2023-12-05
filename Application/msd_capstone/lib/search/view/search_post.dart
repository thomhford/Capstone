// search_post.dart

import 'package:flutter/material.dart';

import 'package:msd_capstone/services/services.dart';
import 'package:msd_capstone/widgets/widgets.dart';

class SearchPost extends StatelessWidget {
  const SearchPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          post.title,
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
      ),
      body: PostCard(post: post),
    );
  }
}