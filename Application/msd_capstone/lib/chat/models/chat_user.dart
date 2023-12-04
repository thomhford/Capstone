// chat_user.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatUser {
  final String firstName;
  final String lastName;
  final String email;
  final String id;
  final String? photoUrl;
  final DateTime updatedAt;

  ChatUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.id,
    this.photoUrl,
    required this.updatedAt,
  });

  factory ChatUser.fromJson(Map<String, dynamic> json) {
    return ChatUser(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      id: json['uid'],
      photoUrl: json['photoUrl'],
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'uid': id,
      'photoUrl': photoUrl,
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory ChatUser.fromMap(Map<String, dynamic> map) {
    return ChatUser(
      firstName: map['firstName'],
      lastName: map['lastName'],
      email: map['email'],
      id: map['uid'],
      photoUrl: map['photoUrl'],
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  types.User toChatUser() {
    return types.User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      imageUrl: photoUrl,
      updatedAt: updatedAt.millisecondsSinceEpoch,
    );
  }
}
