// message.dart

class Message {
  final String senderId;
  final String recipientId;
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

  Map<String, dynamic> toJson() {
    return {
      'sender_id': senderId,
      'recipient_id': recipientId,
      'message': message,
      'is_read': isRead,
      'is_received': isReceived,
      'type': type,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
