// services/get_posts/models/post_user.dart

class PostUser {
  final String firstName;
  final String lastName;
  final String email;
  final String id;
  final String? photoUrl;

  PostUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.id,
    this.photoUrl,
  });

  factory PostUser.fromJson(Map<String, dynamic> json) {
    return PostUser(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      id: json['uid'],
      photoUrl: json['photoUrl'],
    );
  }
}