import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const _avatarSize = 48.0;

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photo, this.name});

  final String? photo;
  final String? name;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
    final name = this.name;
    return CircleAvatar(
      radius: _avatarSize,
      backgroundImage: photo != null ? CachedNetworkImageProvider(photo) : null,
      child: photo == null
          ? (name != null && name.isNotEmpty
          ? Text(
        name.split(' ').map((l) => l[0]).take(2).join(),
        style: const TextStyle(fontSize: _avatarSize * 0.75),
      )
          : const Icon(Icons.person_outline, size: _avatarSize))
          : null,
    );
  }
}
