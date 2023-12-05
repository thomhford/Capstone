// search_page.dart

import 'package:flutter/material.dart';
import 'package:msd_capstone/widgets/widgets.dart';
import '../../global/global.dart';
import '../../services/services.dart';
import 'search_post.dart';

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
      files = postService.fetchAllPosts();
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
      appBar: ClickableAppBar(
        title: 'Search',
        onTap: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
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
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {
                    files = postService.fetchAllPosts();
                  });
                },
                child: Scrollbar(
                  controller: _scrollController,
                  child: FutureBuilder<List<Post>>(
                    future: files,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // While data is loading
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        // If there's an error
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
                      } else {
                        // If data is available, filter the data and display it in a MasonryGridView
                        final filteredFiles = snapshot.data!.where((file) {
                          final String query = _searchQuery.toLowerCase();
                          return file.title.toLowerCase().contains(query) ||
                              file.content.toLowerCase().contains(query) ||
                              '${file.user.firstName.toLowerCase()} ${file.user.lastName.toLowerCase()}'
                                  .contains(query) ||
                              file.user.email.toLowerCase().contains(query);
                        }).toList();
                        if (filteredFiles.isEmpty) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Center(
                              child: Text(
                                'No posts found',
                                style: TextStyle(
                                  color: theme.colorScheme.onBackground,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                            ),
                          );
                        }
                        return MediaWidget(
                          onTap: (post) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchPost(post: post),
                              ),
                            );
                          },
                          files: filteredFiles,
                          scrollController: _scrollController,
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
