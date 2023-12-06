// chat_message.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './chat_user.dart';

class ChatMessage {
  final int? messageId; // set by the server
  final String message;
  final bool read;
  final bool isReceived;
  final String type;
  final int conversationId;
  final DateTime? createdAt; // set by the server
  final String authorId;

  ChatMessage({
    this.messageId, // set by the server
    required this.message,
    required this.read,
    required this.isReceived,
    required this.type,
    required this.conversationId,
    this.createdAt, // set by the server
    required this.authorId,
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
      authorId: json['authorId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'read': read,
      'is_received': isReceived,
      'type': type,
      'conversationId': conversationId,
      'senderId': authorId,
    };
  }

  static ChatMessage fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      messageId: map['message_id'],
      message: map['message'],
      read: map['read'],
      isReceived: map['isReceived'],
      type: map['type'],
      conversationId: map['conversationId'],
      createdAt: DateTime.parse(map['createdAt']),
      authorId: map['authorId'],
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
    );
  }

  types.Message toChatMessage(Map<String, ChatUser> users) {
    return types.TextMessage(
      author: users[authorId]!.toChatUser(),
      id: messageId.toString(),
      text: message,
      createdAt: createdAt!.millisecondsSinceEpoch,
    );
  }
}