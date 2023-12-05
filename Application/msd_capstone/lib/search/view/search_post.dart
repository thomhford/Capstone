// search_post.dart

import 'package:flutter/material.dart';

import 'package:msd_capstone/services/services.dart';
import 'package:msd_capstone/widgets/widgets.dart';

class SearchPost extends StatelessWidget {
  const SearchPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: PostCard(post: post),
    );
  }
}