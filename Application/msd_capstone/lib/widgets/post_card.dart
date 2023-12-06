// post_card.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:msd_capstone/services/services.dart';
import 'package:msd_capstone/widgets/widgets.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.background,
      child: Column(
        children: [
          ListTile(
            title: Text(
              '${post.user.firstName} ${post.user.lastName}',
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontFamily: 'Quicksand',
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              post.user.email,
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontFamily: 'Quicksand',
                fontSize: 15,
              ),
            ),
            leading: Avatar(
              photo: post.user.photoUrl,
              name: '${post.user.firstName} ${post.user.lastName}',
              avatarSize: 25,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: CachedNetworkImage(
              imageUrl: 'http://${dotenv.env['API_URL'] ?? "localhost:3000"}'
                  '/${post.files[0].filePath}',
              // TODO: Update this to use all files(If multiple files are uploaded per post)
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          if (post.title.isEmpty && post.content.isEmpty)
            const SizedBox(height: 20)
          else
            ListTile(
              title: post.title.isNotEmpty
                  ? Text(
                post.title,
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                ),
              )
                  : null,
              subtitle: post.content.isNotEmpty
                  ? Text(
                post.content,
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontFamily: 'Quicksand',
                  fontSize: 15,
                ),
              )
                  : null,
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
            ),
        ],
      ),
    );
  }
}
