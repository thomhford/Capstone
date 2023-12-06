// profile_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/app/app.dart';
import 'package:msd_capstone/profile/view/user_post.dart';
import 'package:msd_capstone/widgets/widgets.dart';

import '../../services/services.dart';
import '../../global/global.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<List<Post>> posts;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    try {
      posts = postService.fetchUserPosts();
    } catch (e) {
      logger.e("Failed to initialize user images: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: ClickableAppBar(
        title: 'Profile',
        onTap: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextButton(
              key: const Key('profilePage_logout_iconButton'),
              child: Text('Logout',
                  style: TextStyle(color: theme.colorScheme.onBackground)),
              onPressed: () {
                context.read<AppBloc>().add(const AppLogoutRequested());
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              posts = postService.fetchUserPosts();
            });
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 16),
                    Avatar(photo: user.photo, name: user.name),
                    const SizedBox(height: 4),
                    Center(
                      child: Text(
                        user.name ?? '',
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: Text(
                        user.email ?? '',
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return FutureBuilder<List<Post>>(
                      future: posts,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          // While data is loading
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          // If there's an error
                          return Center(
                            child: Text('Error: Cannot connect to server.',
                                style: TextStyle(
                                  color: theme.colorScheme.onBackground,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand',
                                )),
                          );
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
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
                          // If data is available, display it in a MasonryGridView
                          return MediaWidget(
                            onTap: (post) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserPost(post: post),
                                ),
                              );
                            },
                            files: snapshot.data!,
                          );
                        }
                      },
                    );
                  },
                  childCount: 1, // you can change this as per your requirement
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
