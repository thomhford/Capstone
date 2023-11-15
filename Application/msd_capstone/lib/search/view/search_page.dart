import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../services/services.dart';
import '../utils/post_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<List<Post>> files;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    try {
      files = PostService(
        auth: FirebaseAuth.instance,
        client: http.Client(),
      ).fetchAllPosts();
    } catch (e) {
      logger.e("Failed to initialize search: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final posts = await files;
              showSearch(
                context: context,
                delegate: PostSearch(posts),
              );
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            files = PostService(
              auth: FirebaseAuth.instance,
              client: http.Client(),
            ).fetchAllPosts();
          });
        },
        child: FutureBuilder<List<Post>>(
          future: files,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While data is loading
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              // If there's an error
              return const Center(
                child: Text('Error: Cannot connect to server.'),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              // If there's no data
              return const Center(
                child: Text('No files available.'),
              );
            } else {
              // If data is available, display it in a MasonryGridView
              return MasonryGridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                cacheExtent: 1000,
                itemBuilder: (BuildContext context, int index) {
                  final post = snapshot.data![index];
                  return Card(
                    child: Column(
                      children: <Widget>[
                        Text(post.title, style: Theme
                            .of(context)
                            .textTheme
                            .titleLarge),
                        Text(post.content),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CachedNetworkImage(
                            imageUrl: 'http://${dotenv.env['API_URL'] ??
                                "localhost:3000"}'
                                '/${post.files[0].filePath}',
                            // TODO: Update this to use all files(If multiple files are uploaded)
                            placeholder: (context,
                                url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            }
          },
        ),
      ),
    );
  }
}
