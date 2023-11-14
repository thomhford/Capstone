// services/get_posts/models/file.dart

class FileMetadata {
  final String fileName;
  final String originalName;
  final String mimeType;
  final int fileSize;
  final DateTime uploadDate;
  final String filePath;

  FileMetadata({
    required this.fileName,
    required this.originalName,
    required this.mimeType,
    required this.fileSize,
    required this.uploadDate,
    required this.filePath,
  });

  factory FileMetadata.fromJson(Map<String, dynamic> json) {
    return FileMetadata(
      fileName: json['file_name'],
      originalName: json['original_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
      uploadDate: DateTime.parse(json['upload_date']),
      filePath: json['file_path'],
    );
  }
}
