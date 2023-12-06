// home_page.dart

import 'package:flutter/material.dart';
import 'package:msd_capstone/widgets/widgets.dart';
import 'package:msd_capstone/global/global.dart';
import 'package:msd_capstone/services/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Post>> posts;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    try {
      posts = postService.fetchAllPosts();
    } catch (e) {
      logger.e("Failed to initialize search: $e");
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: ClickableAppBar(
        title: 'Home',
        onTap: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
      ),
      body: FutureBuilder<List<Post>>(
        future: posts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  posts = postService.fetchAllPosts();
                });
              },
              child: ListView.builder(
                controller: _scrollController,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final post = snapshot.data![index];
                  return PostCard(post: post);
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: Cannot connect to server.',
                style: TextStyle(
                  color: theme.colorScheme.onBackground,
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                ),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // If there's no data
            return Center(
              child: Text(
                'No files available.',
                style: TextStyle(
                  color: theme.colorScheme.onBackground,
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
