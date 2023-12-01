// chat_message.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './chat_user.dart';

class ChatMessage {
  final int messageId;
  final String message;
  final bool read;
  final bool isReceived;
  final String type;
  final int conversationId;
  final String status;
  final DateTime createdAt;

  ChatMessage({
    required this.messageId,
    required this.message,
    required this.read,
    required this.isReceived,
    required this.type,
    required this.conversationId,
    required this.status,
    required this.createdAt,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      messageId: json['message_id'],
      message: json['message'],
      read: json['read'],
      isReceived: json['is_received'],
      type: json['type'],
      conversationId: json['conversationId'],
      status: json['status'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'message': message,
      'read': read,
      'is_received': isReceived,
      'type': type,
      'conversationId': conversationId,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  static ChatMessage fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      messageId: map['message_id'],
      message: map['message'],
      read: map['read'],
      isReceived: map['is_received'],
      type: map['type'],
      conversationId: map['conversationId'],
      status: map['status'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  types.Message toChatMessage(Map<String, ChatUser> users) {
    return types.TextMessage(
      author: users[messageId.toString()]!.toChatUser(),
      id: messageId.toString(),
      text: message,
      createdAt: createdAt.millisecondsSinceEpoch,
    );
  }
}