// widgets/media_widget.dart

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../services/services.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({
    super.key,
    required this.post,
    required this.onTap,
  });

  final Post post;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CachedNetworkImage(
            imageUrl: 'http://${dotenv.env['API_URL'] ?? "localhost:3000"}'
                '/${post.files[0].filePath}',
            // TODO: Update this to use all files(If multiple files are uploaded per post)
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
