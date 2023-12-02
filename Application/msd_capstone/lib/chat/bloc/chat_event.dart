part of 'chat_bloc.dart';

/// Base class for all events in the ChatBloc.
abstract class ChatEvent {
  const ChatEvent();
}

/// Event triggered when the socket successfully connects to the server.
final class ConnectEvent extends ChatEvent {
  const ConnectEvent();
}

/// Event triggered when the socket disconnects from the server.
final class DisconnectEvent extends ChatEvent {
  const DisconnectEvent();
}

/// Event that is triggered when the server sends a list of conversations.
final class ConversationsReceivedEvent extends ChatEvent {
  final List<Conversation> conversations;
  /// Takes a [List] of [Conversation] objects that represent the current state of conversations.
  ConversationsReceivedEvent(this.conversations);
}

/// Event triggered when the server sends a list of users.
final class UsersReceivedEvent extends ChatEvent {
  final List<ChatUser> users;

  /// Takes a [List] of [ChatUser] objects that represent the current state of users.
  UsersReceivedEvent(this.users);
}

/// Event triggered when the server sends a message.
final class MessageReceivedEvent extends ChatEvent {
  final ChatMessage message;

  /// Takes a [ChatMessage] object that represents the current state of the message.
  MessageReceivedEvent(this.message);
}

/// Event triggered when a message is sent.
final class MessageSentEvent extends ChatEvent {
  final ChatMessage message;

  MessageSentEvent(this.message);
}

/// Event triggered when a message is read.
final class MessageReadEvent extends ChatEvent {
  final String messageId;

  MessageReadEvent(this.messageId);
}

/// Event triggered when the server confirms that a message has been read.
final class MessageReadReceiptEvent extends ChatEvent {
  final String messageId;

  MessageReadReceiptEvent(this.messageId);
}

/// Event triggered when a user starts typing.
final class UserTypingEvent extends ChatEvent {
  final String userId;

  UserTypingEvent(this.userId);
}

/// Event triggered when the server confirms that a user is typing.
final class UserTypingReceiptEvent extends ChatEvent {
  final String userId;

  UserTypingReceiptEvent(this.userId);
}

/// Event triggered when a user stops typing.
final class UserStopTypingEvent extends ChatEvent {
  final String userId;

  UserStopTypingEvent(this.userId);
}

/// Event triggered when the server confirms that a user has stopped typing.
final class UserStopTypingReceiptEvent extends ChatEvent {
  final String userId;

  UserStopTypingReceiptEvent(this.userId);
}

/// Event triggered when a message is deleted.
final class MessageDeletedEvent extends ChatEvent {
  final String messageId;

  MessageDeletedEvent(this.messageId);
}

/// Event triggered when a request to delete a message is made.
final class DeleteMessageEvent extends ChatEvent {
  final String messageId;

  DeleteMessageEvent(this.messageId);
}

/// Event triggered when a request to delete a conversation is made.
final class DeleteConversationEvent extends ChatEvent {
  final String conversationId;

  DeleteConversationEvent(this.conversationId);
}

/// Event triggered when a conversation is deleted.
final class ConversationDeletedEvent extends ChatEvent {
  final String conversationId;

  ConversationDeletedEvent(this.conversationId);
}

/// Event triggered when an error occurs.
final class ErrorEvent extends ChatEvent {
  final String error;

  ErrorEvent(this.error);
}