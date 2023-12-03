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

/// Event triggered when the server sends a new conversation.
final class NewConversationReceivedEvent extends ChatEvent {
  final Conversation conversation;
  /// Takes a [Conversation] object that represents the current state of the conversation.
  NewConversationReceivedEvent(this.conversation);
}

/// Event triggered when a new conversation is created.
final class NewConversationEvent extends ChatEvent {
  final String senderId;
  final String recipientId;
  /// Takes the [senderId] and [recipientId] of the new conversation.
  NewConversationEvent(this.senderId, this.recipientId);
}

/// Event triggered when the server sends a message.
final class MessageReceivedEvent extends ChatEvent {
  final ChatMessage message;
  /// Takes a [ChatMessage] object that represents the current state of the message.
  MessageReceivedEvent(this.message);
}

/// Event triggered when a client sends a message.
final class MessageSentEvent extends ChatEvent {
  final ChatMessage message;
  /// Takes a [ChatMessage] object that represents the current state of the sent message.
  MessageSentEvent(this.message);
}

/// Event triggered when a message is read by a client.
final class MessageReadEvent extends ChatEvent {
  final String messageId;
  /// Takes a [String] that represents the ID of the read message.
  MessageReadEvent(this.messageId);
}

/// Event triggered when the server notifies the sender that a message has been read.
final class MessageReadReceiptEvent extends ChatEvent {
  final String messageId;
  /// Takes a [String] that represents the ID of the read message.
  MessageReadReceiptEvent(this.messageId);
}

/// Event triggered when a user starts typing.
final class UserTypingEvent extends ChatEvent {
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  UserTypingEvent(this.userId);
}

/// Event triggered when the server notifies the other user in a conversation that a user is typing.
final class UserTypingReceiptEvent extends ChatEvent {
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  UserTypingReceiptEvent(this.userId);
}

/// Event triggered when a user stops typing.
final class UserStopTypingEvent extends ChatEvent {
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  UserStopTypingEvent(this.userId);
}

/// Event triggered when the server notifies the other user in a conversation that a user has stopped typing.
final class UserStopTypingReceiptEvent extends ChatEvent {
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  UserStopTypingReceiptEvent(this.userId);
}

/// Event triggered when a message is deleted on the server and 'message deleted' event is received.
final class MessageDeletedEvent extends ChatEvent {
  final String messageId;
  /// Takes a [String] that represents the ID of the deleted message.
  MessageDeletedEvent(this.messageId);
}

/// Event triggered when a request to delete a message is made to the server.
final class DeleteMessageEvent extends ChatEvent {
  final String messageId;
  /// Takes a [String] that represents the ID of the message to be deleted.
  DeleteMessageEvent(this.messageId);
}

/// Event triggered when a request to delete a conversation is made.
final class DeleteConversationEvent extends ChatEvent {
  final String conversationId;
  /// Takes a [String] that represents the ID of the conversation to be deleted.
  DeleteConversationEvent(this.conversationId);
}

/// Event triggered when a conversation is deleted.
final class ConversationDeletedEvent extends ChatEvent {
  final String conversationId;
  /// Takes a [String] that represents the ID of the deleted conversation.
  ConversationDeletedEvent(this.conversationId);
}

/// Event triggered when an error occurs.
final class ErrorEvent extends ChatEvent {
  final String message;
  final String details;
  /// Takes a [String] that represents the error message and details.
  ErrorEvent(this.message, this.details);
}