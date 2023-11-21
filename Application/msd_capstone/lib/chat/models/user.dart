// user.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class User {
  final String id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

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
