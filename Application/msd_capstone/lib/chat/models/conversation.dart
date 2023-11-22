// conversation.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './chat_user.dart';
import './chat_message.dart';

class Conversation {
  final Map<String, ChatUser> users;
  late final List<ChatMessage> messages;

  Conversation({
    required this.users,
    required this.messages,
  });

  List<types.Message> toChatMessages() {
    return messages.map((message) => message.toChatMessage(users)).toList();
  }

  static Conversation fromMap(Map<String, dynamic> map) {
    // Parse users
    Map<String, ChatUser> users = {};
    if (map['users'] != null) {
      map['users'].forEach((key, value) {
        users[key] = ChatUser.fromMap(value);
      });
    }

    // Parse messages
    List<ChatMessage> messages = [];
    if (map['messages'] != null) {
      map['messages'].forEach((value) {
        messages.add(ChatMessage.fromMap(value));
      });
    }

    return Conversation(
      users: users,
      messages: messages,
    );
  }

}