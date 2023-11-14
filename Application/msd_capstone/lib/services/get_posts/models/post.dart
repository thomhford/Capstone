// services/get_posts/models/post.dart

import './file.dart';

class Post {
  final String title;
  final String content;
  final List<FileMetadata> files;

  Post({
    required this.title,
    required this.content,
    required this.files,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    var fileListJson = json['Files'] as List;
    List<FileMetadata> fileList = fileListJson.map((i) => FileMetadata.fromJson(i)).toList();

    return Post(
      title: json['title'],
      content: json['content'],
      files: fileList,
    );
  }
}