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
  final DateTime createdAt;
  final String authorId;
  final String recipientId;

  ChatMessage({
    required this.messageId,
    required this.message,
    required this.read,
    required this.isReceived,
    required this.type,
    required this.conversationId,
    required this.createdAt,
    required this.authorId,
    required this.recipientId,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      messageId: json['message_id'],
      message: json['message'],
      read: json['read'],
      isReceived: json['is_received'],
      type: json['type'],
      conversationId: json['conversationId'],
      createdAt: DateTime.parse(json['createdAt']),
      authorId: json['senderId'],
      recipientId: json['receiverId'],
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
      'createdAt': createdAt.toIso8601String(),
      'senderId': authorId,
      'receiverId': recipientId,
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
      createdAt: DateTime.parse(map['createdAt']),
      authorId: map['senderId'],
      recipientId: map['receiverId'],
    );
  }

  ChatMessage copyWith({
    int? messageId,
    String? message,
    bool? read,
    bool? isReceived,
    String? type,
    int? conversationId,
    String? status,
    DateTime? createdAt,
    String? authorId,
    String? recipientId,
  }) {
    return ChatMessage(
      messageId: messageId ?? this.messageId,
      message: message ?? this.message,
      read: read ?? this.read,
      isReceived: isReceived ?? this.isReceived,
      type: type ?? this.type,
      conversationId: conversationId ?? this.conversationId,
      createdAt: createdAt ?? this.createdAt,
      authorId: authorId ?? this.authorId,
      recipientId: recipientId ?? this.recipientId,
    );
  }

  types.Message toChatMessage(Map<String, ChatUser> users) {
    return types.TextMessage(
      author: users[authorId]!.toChatUser(),
      id: messageId.toString(),
      text: message,
      createdAt: createdAt.millisecondsSinceEpoch,
    );
  }
}