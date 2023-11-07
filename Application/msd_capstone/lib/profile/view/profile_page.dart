import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:msd_capstone/app/app.dart';

import '../../services/file.dart';
import '../profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<List<FileMetadata>> files;

  @override
  void initState() {
    super.initState();
    try {
      files = FileService(
        auth: FirebaseAuth.instance,
        client: http.Client(),
      ).fetchAllFiles();
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
                Avatar(photo: user.photo),
                const SizedBox(height: 4),
                Text(user.email ?? '', style: textTheme.titleLarge),
                const SizedBox(height: 4),
                Text(user.name ?? '', style: textTheme.headlineSmall),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: FutureBuilder<List<FileMetadata>>(
              future: files,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (snapshot.hasError) {
                  return const SliverToBoxAdapter(
                    child:
                        Center(child: Text('Error: Cannot connect to server.')),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const SliverToBoxAdapter(
                    child: Center(child: Text('No files available.')),
                  );
                } else {
                  return SliverMasonryGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    itemBuilder: (BuildContext context, int index) {
                      final file = snapshot.data![index];
                      return CachedNetworkImage(
                        imageUrl:
                            'http://${dotenv.env['API_URL'] ?? "localhost:3000"}/${file.filePath}',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
