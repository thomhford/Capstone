// message.dart

class Message {
  final String senderId;
  final String senderEmail;
  final String recipientId;
  final String message;
  final DateTime timestamp;

  Message({
    required this.senderId,
    required this.senderEmail,
    required this.recipientId,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return {
      'sender_id': senderId,
      'sender_email': senderEmail,
      'recipient_id': recipientId,
      'message': message,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
