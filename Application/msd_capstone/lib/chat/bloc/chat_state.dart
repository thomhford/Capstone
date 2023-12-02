part of 'chat_bloc.dart';

/// Base class for all states in the ChatBloc.
abstract class ChatState {}

/// State emitted when the socket successfully connects to the server.
class SocketConnected extends ChatState {}

/// State emitted when the socket disconnects from the server.
class SocketDisconnected extends ChatState {}

/// State emitted when the server sends a list of conversations.
class SocketConversationsReceived extends ChatState {
  final List<Conversation> conversations;

  /// Takes a [List] of [Conversation] objects that represent the current state of conversations.
  SocketConversationsReceived(this.conversations);
}

/// State emitted when the server sends a list of users.
class SocketUsersReceived extends ChatState {
  final List<ChatUser> users;

  /// Takes a [List] of [ChatUser] objects that represent the current state of users.
  SocketUsersReceived(this.users);
}

/// State emitted when the server sends a new conversation.
class SocketNewConversationReceived extends ChatState {
  final Conversation conversation;

  /// Takes a [Conversation] object that represents the current state of the conversation.
  SocketNewConversationReceived(this.conversation);
}

/// State emitted when a new conversation is created.
class SocketNewConversation extends ChatState {
  final String senderId;
  final String recipientId;

  SocketNewConversation(this.senderId, this.recipientId);
}

/// State emitted when the server sends a message.
class SocketMessageReceived extends ChatState{
  final ChatMessage message;

  /// Takes a [ChatMessage] object that represents the current state of the message.
  SocketMessageReceived(this.message);
}

/// State emitted when a message is sent.
class SocketMessageSent extends ChatState{
  final ChatMessage message;

  /// Takes a [ChatMessage] object that represents the current state of the sent message.
  SocketMessageSent(this.message);
}

/// State emitted when the server confirms that a message has been read.
class SocketMessageReadReceipt extends ChatState{
  final String messageId;

  /// Takes a [String] that represents the ID of the read message.
  SocketMessageReadReceipt(this.messageId);
}

/// State emitted when a user starts typing.
class SocketUserTyping extends ChatState{
  final String userId;

  /// Takes a [String] that represents the ID of the typing user.
  SocketUserTyping(this.userId);
}

/// State emitted when the server confirms that a user is typing.
class SocketUserTypingReceipt extends ChatState{
  final String userId;

  /// Takes a [String] that represents the ID of the typing user.
  SocketUserTypingReceipt(this.userId);
}

/// State emitted when a user stops typing.
class SocketUserStopTyping extends ChatState{
  final String userId;

  /// Takes a [String] that represents the ID of the user that stopped typing.
  SocketUserStopTyping(this.userId);
}

/// State emitted when the server confirms that a user has stopped typing.
class SocketUserStopTypingReceipt extends ChatState{
  final String userId;

  /// Takes a [String] that represents the ID of the user that stopped typing.
  SocketUserStopTypingReceipt(this.userId);
}

/// State emitted when a message is deleted.
class SocketMessageDeleted extends ChatState{
  final String messageId;

  /// Takes a [String] that represents the ID of the deleted message.
  SocketMessageDeleted(this.messageId);
}

/// State emitted when a request to delete a message is made.
class SocketDeleteMessage extends ChatState{
  final String messageId;

  /// Takes a [String] that represents the ID of the message to be deleted.
  SocketDeleteMessage(this.messageId);
}

/// State emitted when a conversation is deleted.
class SocketConversationDeleted extends ChatState{
  final String conversationId;

  /// Takes a [String] that represents the ID of the deleted conversation.
  SocketConversationDeleted(this.conversationId);
}

/// State emitted when a request to delete a conversation is made.
class SocketDeleteConversation extends ChatState{
  final String conversationId;

  /// Takes a [String] that represents the ID of the conversation to be deleted.
  SocketDeleteConversation(this.conversationId);
}

/// State emitted when an error occurs.
class SocketError extends ChatState {
  final String error;

  /// Takes a [String] that represents the error message.
  SocketError(this.error);
}