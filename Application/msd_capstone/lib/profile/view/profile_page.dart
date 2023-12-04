import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        actions: <Widget>[
          IconButton(
            key: const Key('profilePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AppBloc>().add(const AppLogoutRequested());
            },
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
                    child: Text(user.email ?? '', style: textTheme.titleLarge)),
                const SizedBox(height: 4),
                Center(
                    child:
                        Text(user.name ?? '', style: textTheme.headlineSmall)),
              ],
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
                return const SliverFillRemaining(
                  child: Center(child: Text('No files available.')),
                );
              } else {
                return SliverMasonryGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final post = snapshot.data![index];
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Text(post.title, style: Theme.of(context).textTheme.titleLarge),
                          Text(post.content),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CachedNetworkImage(
                              imageUrl: 'http://${dotenv.env['API_URL'] ?? "localhost:3000"}'
                                  '/${post.files[0].filePath}',
                              // TODO: Update this to use all files(If multiple files are uploaded)
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                        ],
                      ),
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
