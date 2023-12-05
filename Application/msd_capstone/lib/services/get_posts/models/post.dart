// services/get_posts/models/media_widget.dart

import './file.dart';
import './post_user.dart';

class Post {
  final String title;
  final String content;
  final List<FileMetadata> files;
  final PostUser user;

  Post({
    required this.title,
    required this.content,
    required this.files,
    required this.user,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    var fileListJson = json['Files'] as List;
    List<FileMetadata> fileList = fileListJson.map((i) => FileMetadata.fromJson(i)).toList();

    return Post(
      title: json['title'],
      content: json['content'],
      files: fileList,
      user: PostUser.fromJson(json['User']),
    );
  }
}