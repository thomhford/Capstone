import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../services/services.dart';
import 'package:msd_capstone/widgets/widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<List<Post>> files;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  final searchFocusNode = FocusNode();

  String _searchQuery = '';

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

  void updateSearchQuery(String newQuery) {
    setState(() {
      _searchQuery = newQuery;
    });
  }

  void clearSearch() {
    searchController.clear();
    updateSearchQuery('');
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          'Search',
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchWidget(
              searchFocusNode: searchFocusNode,
              searchController: searchController,
              updateSearchQuery: updateSearchQuery,
              clearSearch: clearSearch,
              theme: theme,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Scrollbar(
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
                        gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        cacheExtent: 1000,
                        itemBuilder: (BuildContext context, int index) {
                          final post = snapshot.data![index];
                          return MediaWidget(
                            post: post,
                            onTap: () {
                              print('Tapped on $post');
                            },
                          );
                        },
                        itemCount: snapshot.data!.length,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
