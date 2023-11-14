import 'package:flutter/material.dart';
import '../../services/services.dart';

class PostSearch extends SearchDelegate<Post?> {
  final List<Post> posts;

  PostSearch(this.posts);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = posts.where((post) => post.title.toLowerCase().contains(query.toLowerCase()));

    return ListView(
      children: results.map((post) => ListTile(
        title: Text(post.title),
        onTap: () {
          close(context, post);
        },
      )).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = posts.where((post) => post.title.toLowerCase().startsWith(query.toLowerCase()));

    return ListView(
      children: suggestions.map((post) => ListTile(
        title: Text(post.title),
        onTap: () {
          query = post.title;
        },
      )).toList(),
    );
  }
}