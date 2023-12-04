import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

const _defaultAvatarSize = 48.0;

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photo, this.name, this.avatarSize});

  final String? photo;
  final String? name;
  final double? avatarSize;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
    final name = this.name;
    final avatarSize = this.avatarSize ?? _defaultAvatarSize;
    return CircleAvatar(
      radius: avatarSize,
      backgroundImage: photo != null ? CachedNetworkImageProvider(photo) : null,
      child: photo == null
          ? (name != null && name.isNotEmpty
              ? Text(
                  name.split(' ').map((l) => l[0]).take(2).join(),
                  style: TextStyle(fontSize: avatarSize * 0.75),
                )
              : Icon(Icons.person_outline, size: avatarSize))
          : null,
    );
  }
}
