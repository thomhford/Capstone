// conversation.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './user.dart';
import './message.dart';

class Conversation {
  final Map<String, User> users;
  final List<ChatMessage> messages;

  Conversation({
    required this.users,
    required this.messages,
  });

  List<types.Message> toChatMessages() {
    return messages.map((message) => message.toChatMessage(users)).toList();
  }
}