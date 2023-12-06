// conversation.dart

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import './chat_user.dart';
import './chat_message.dart';

class Conversation {
  final int? conversationId;
  final ChatUser user1;
  final ChatUser user2;
  final Map<int, ChatMessage> messages;
  final DateTime createdAt;

  Conversation({
    this.conversationId,
    required this.user1,
    required this.user2,
    required this.messages,
    required this.createdAt,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) {
    Map<int, ChatMessage> messages = {};
    if (json['Messages'] != null) {
      for (var item in (json['Messages'])) {
        var message = ChatMessage.fromJson(item);
        messages[message.messageId!] = message;
      }
    }
    return Conversation(
      conversationId: json['conversation_id'],
      user1: ChatUser.fromJson(json['User1']),
      user2: ChatUser.fromJson(json['User2']),
      messages: messages,
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'conversation_id': conversationId,
      'User1': user1.toJson(),
      'User2': user2.toJson(),
      'Messages': messages.values.map((message) => message.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Conversation.fromMap(Map<String, dynamic> map) {
    Map<int, ChatMessage> messages = {};
    if (map['Messages'] != null) {
      for (var item in (map['Messages'])) {
        var message = ChatMessage.fromMap(item);
        messages[message.messageId!] = message;
      }
    }
    return Conversation(
      conversationId: map['conversation_id'],
      user1: ChatUser.fromMap(map['User1']),
      user2: ChatUser.fromMap(map['User2']),
      messages: messages,
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  types.User getRecipientUser(String currentUserId) {
    return currentUserId == user1.id ? user2.toChatUser() : user1.toChatUser();
  }

  ChatUser getRecipientChatUser(String currentUserId) {
    return currentUserId == user1.id ? user2 : user1;
  }

  List<types.Message> toChatMessages() {
    return messages.values.map((message) {
      return types.TextMessage(
        id: message.messageId.toString(),
        author: message.authorId == user1.id ? user1.toChatUser() : user2.toChatUser(),
        text: message.message,
        createdAt: message.createdAt!.millisecondsSinceEpoch,
      );
    }).toList();
  }
}