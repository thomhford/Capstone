// message.dart

import './user.dart';

class Message {
  final User senderId;
  final User recipientId;
  final String message;
  final bool isRead;
  final bool isReceived;
  final String type;
  final DateTime timestamp;

  Message({
    required this.senderId,
    required this.recipientId,
    required this.message,
    required this.isRead,
    required this.isReceived,
    required this.type,
    required this.timestamp,
  });
}
