// message.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './user.dart';

class ChatMessage {
  final String senderId;
  final String recipientId;
  final String message;
  final bool read;
  final bool isReceived;
  final String type;
  final DateTime timestamp;

  ChatMessage({
    required this.senderId,
    required this.recipientId,
    required this.message,
    required this.read,
    required this.isReceived,
    required this.type,
    required this.timestamp,
  });

  types.Message toChatMessage(Map<String, User> users) {
    return types.TextMessage(
      author: users[senderId]!.toChatUser(),
      id: '', // Generate or use an existing unique message ID
      text: message,
      createdAt: timestamp.millisecondsSinceEpoch,
    );
  }
}
