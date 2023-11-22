// chat_user.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatUser {
  final String id;
  final String name;
  final String imageUrl;

  ChatUser({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  static ChatUser fromMap(Map<String, dynamic> map) {
    return ChatUser(
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }

  types.User toChatUser() {
    // Split the name into first and last
    final nameSplit = name.split(' ');
    // Check if the name has more than one part
    if (nameSplit.length == 2) {
      // Return a ChatUser with both first and last name
      return types.User(
        id: id,
        firstName: nameSplit[0],
        lastName: nameSplit[1],
        imageUrl: imageUrl,
      );
    } else {
      // If it doesn't, return a ChatUser with first name only
      return types.User(
        id: id,
        firstName: nameSplit[0],
        imageUrl: imageUrl,
      );
    }
  }
}
