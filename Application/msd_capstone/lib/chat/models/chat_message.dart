// chat_message.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './chat_user.dart';

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

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      senderId: json['sender_id'],
      recipientId: json['recipient_id'],
      message: json['message'],
      read: json['is_read'],
      isReceived: json['is_received'],
      type: json['type'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sender_id': senderId,
      'recipient_id': recipientId,
      'message': message,
      'is_read': read,
      'is_received': isReceived,
      'type': type,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  static ChatMessage fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      senderId: map['sender_id'],
      recipientId: map['recipient_id'],
      message: map['message'],
      read: map['is_read'],
      isReceived: map['is_received'],
      type: map['type'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }

  types.Message toChatMessage(Map<String, ChatUser> users) {
    return types.TextMessage(
      author: users[senderId]!.toChatUser(),
      id: '', // Generate or use an existing unique message ID
      text: message,
      createdAt: timestamp.millisecondsSinceEpoch,
    );
  }
}
