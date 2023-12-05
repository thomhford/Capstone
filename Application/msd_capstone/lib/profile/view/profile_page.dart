import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:msd_capstone/app/app.dart';
import 'package:msd_capstone/widgets/widgets.dart';

import '../../services/services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<List<Post>> posts;

  @override
  void initState() {
    super.initState();
    try {
      posts = PostService(
        auth: FirebaseAuth.instance,
        client: http.Client(),
      ).fetchUserPosts();
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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          'Profile',
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 16),
                Avatar(photo: user.photo, name: user.name),
                const SizedBox(height: 4),
                Center(
                  child: Text(user.name ?? '',
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        fontSize: 20,
                      )),
                ),
                const SizedBox(height: 4),
                Center(
                  child: Text(user.email ?? '',
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      )),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          FutureBuilder<List<Post>>(
            future: posts,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (snapshot.hasError) {
                return const SliverFillRemaining(
                  child:
                      Center(child: Text('Error: Cannot connect to server.')),
                );
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      'No files available.',
                      style: TextStyle(
                        color: theme.colorScheme.onBackground,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                );
              } else {
                return SliverMasonryGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final post = snapshot.data![index];
                    return MediaWidget(
                      post: post,
                      onTap: () {
                        print('Tapped on Post in Profile Page');
                      },
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
