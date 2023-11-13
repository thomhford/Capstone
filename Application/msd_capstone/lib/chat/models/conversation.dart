// conversation.dart

import './user.dart';
import './message.dart';

class Conversation {
  final User user1;
  final User user2;
  final List<Message> messages;

  Conversation({
    required this.user1,
    required this.user2,
    required this.messages,
  });
}