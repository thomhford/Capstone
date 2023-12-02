part of 'chat_bloc.dart';

abstract class ChatState {}

class SocketConnected extends ChatState {}

class SocketDisconnected extends ChatState {}

class SocketConversationReceived extends ChatState {
  final List<Conversation> conversations;

  SocketConversationReceived(this.conversations);
}

class SocketUsersReceived extends ChatState {
  final List<ChatUser> users;

  SocketUsersReceived(this.users);
}

class SocketMessageReceived extends ChatState{
  final ChatMessage message;

  SocketMessageReceived(this.message);
}

class SocketMessageSent extends ChatState{
  final ChatMessage message;

  SocketMessageSent(this.message);
}

class SocketMessageReadReceipt extends ChatState{
  final String messageId;

  SocketMessageReadReceipt(this.messageId);
}

class SocketUserTyping extends ChatState{
  final String userId;

  SocketUserTyping(this.userId);
}

class SocketUserTypingReceipt extends ChatState{
  final String userId;

  SocketUserTypingReceipt(this.userId);
}

class  SocketUserStopTyping extends ChatState{
  final String userId;

  SocketUserStopTyping(this.userId);
}

class SocketUserStopTypingReceipt extends ChatState{
  final String userId;

  SocketUserStopTypingReceipt(this.userId);
}

class SocketMessageDeleted extends ChatState{
  final String messageId;

  SocketMessageDeleted(this.messageId);
}

class SocketDeleteMessage extends ChatState{
  final String messageId;

  SocketDeleteMessage(this.messageId);
}

class SocketConversationDeleted extends ChatState{
  final String conversationId;

  SocketConversationDeleted(this.conversationId);
}

class SocketDeleteConversation extends ChatState{
  final String conversationId;

  SocketDeleteConversation(this.conversationId);
}

class SocketError extends ChatState {}