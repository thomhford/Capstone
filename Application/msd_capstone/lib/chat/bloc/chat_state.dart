part of 'chat_bloc.dart';

/// Base class for all states in the ChatBloc.
/// Extends [Equatable] for equality comparison in testing.
abstract class ChatState extends Equatable {}

/// State storing the data of the ChatPage.
/// This stores the lists of conversations and users.
class ChatData extends ChatState {
  final Map<int, Conversation> conversations;
  final Map<String, ChatUser> users;
  /// Takes a [Map] of [Conversation] objects that represent the current state of conversations
  /// Takes a [Map] of [ChatUser] objects that represent the current state of users.
  ChatData(this.conversations, this.users);

  @override
  List<Object> get props => [conversations, users];
}

/// State emitted when the socket successfully connects to the server.
class SocketConnected extends ChatState {
  @override
  List<Object> get props => [];
}

/// State emitted when the socket disconnects from the server.
/// This is the initial state of the ChatBloc.
class SocketDisconnected extends ChatState {
  @override
  List<Object> get props => [];
}

/// State emitted when a list of conversations is received from the server.
/// This should be emitted on connection to server.
class SocketConversationsReceived extends ChatState {
  @override
  List<Object> get props => [];
}

/// State emitted when the server fails to send a list of conversations.
class SocketFetchConversationsFailed extends ChatState {
  final String details;
  SocketFetchConversationsFailed(this.details);

  @override
  List<Object> get props => [details];
}

/// State emitted when a list of users is received from the server.
/// This should be emitted on connection to server.
class SocketUsersReceived extends ChatState {
  @override
  List<Object?> get props => [];
}

/// State emitted when the server fails to send a list of users.
class SocketFetchUsersFailed extends ChatState {
  final String details;
  SocketFetchUsersFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when a new conversation is received from the server.
class SocketNewConversationReceived extends ChatState {
  final Conversation conversation;
  /// Takes a [Conversation] object that represents the current state of the conversation.
  SocketNewConversationReceived(this.conversation);

  @override
  List<Object?> get props => [conversation];
}

/// State emitted when a new conversation is created.
class SocketNewConversation extends ChatState {
  final String senderId;
  final String recipientId;
  SocketNewConversation(this.senderId, this.recipientId);

  @override
  List<Object?> get props => [senderId, recipientId];
}

/// State emitted when a conversation fails to be created.
class SocketCreateConversationFailed extends ChatState {
  final String details;
  SocketCreateConversationFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when the client has received a message from the server.
class SocketNewMessage extends ChatState{
  final ChatMessage message;
  /// Takes a [ChatMessage] object that represents the current state of the message.
  SocketNewMessage(this.message);

  @override
  List<Object?> get props => [message];
}

/// State emitted when a message has been marked as received in the server.
class SocketMessageReceived extends ChatState{
  final int messageId;
  final int conversationId;
  /// Takes a [int] that represents the ID of the received message.
  /// Takes a [int] that represents the ID of the conversation that the message belongs to.
  SocketMessageReceived(this.messageId, this.conversationId);

  @override
  List<Object?> get props => [messageId];
}

/// State emitted when a message fails to be sent by the server to the client
class SocketNewMessageFailed extends ChatState{
  final String details;
  SocketNewMessageFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when the client sends a message to the server.
class SocketMessageSent extends ChatState{
  final ChatMessage message;
  /// Takes a [ChatMessage] object that represents the current state of the sent message.
  SocketMessageSent(this.message);

  @override
  List<Object?> get props => [message];
}

/// State emitted when a message fails to be sent by the client to the server.
class SocketSendMessageFailed extends ChatState{
  final String details;
  SocketSendMessageFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when the server confirms that a message has been read.
class SocketMessageReadReceipt extends ChatState{
  final int messageId;
  final int conversationId;
  /// Takes a [int] that represents the ID of the read message.
  SocketMessageReadReceipt(this.messageId, this.conversationId);

  @override
  List<Object?> get props => [messageId];
}

/// State emitted when a user starts typing.
class SocketUserTyping extends ChatState{
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  SocketUserTyping(this.userId);

  @override
  List<Object?> get props => [userId];
}

/// State emitted when the server confirms that a user is typing.
class SocketUserTypingReceipt extends ChatState{
  final String userId;
  /// Takes a [String] that represents the ID of the typing user.
  SocketUserTypingReceipt(this.userId);

  @override
  List<Object?> get props => [userId];
}

/// State emitted when a user stops typing.
class SocketUserStopTyping extends ChatState{
  final String userId;
  /// Takes a [String] that represents the ID of the user that stopped typing.
  SocketUserStopTyping(this.userId);

  @override
  List<Object?> get props => [userId];
}

/// State emitted when the server confirms that a user has stopped typing.
class SocketUserStopTypingReceipt extends ChatState{
  final String userId;
  /// Takes a [String] that represents the ID of the user that stopped typing.
  SocketUserStopTypingReceipt(this.userId);

  @override
  List<Object?> get props => [userId];
}

/// State emitted when a message is deleted.
class SocketMessageDeleted extends ChatState{
  final int messageId;
  final int conversationId;
  /// Takes a [int] that represents the ID of the deleted message.
  SocketMessageDeleted(this.messageId, this.conversationId);

  @override
  List<Object?> get props => [messageId];
}

/// State emitted when the server fails to delete a message.
class SocketDeleteMessageFailed extends ChatState{
  final String details;
  SocketDeleteMessageFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when a request to delete a message is made.
class SocketDeleteMessage extends ChatState{
  final int messageId;
  /// Takes a [int] that represents the ID of the message to be deleted.
  SocketDeleteMessage(this.messageId);

  @override
  List<Object?> get props => [messageId];
}

/// State emitted when a conversation is deleted.
class SocketConversationDeleted extends ChatState{
  final int conversationId;
  /// Takes a [int] that represents the ID of the deleted conversation.
  SocketConversationDeleted(this.conversationId);

  @override
  List<Object?> get props => [conversationId];
}

/// State emitted when the server fails to delete a conversation.
class SocketDeleteConversationFailed extends ChatState{
  final String details;
  SocketDeleteConversationFailed(this.details);

  @override
  List<Object?> get props => [details];
}

/// State emitted when a request to delete a conversation is made.
class SocketDeleteConversation extends ChatState{
  final int conversationId;
  /// Takes a [int] that represents the ID of the conversation to be deleted.
  SocketDeleteConversation(this.conversationId);

  @override
  List<Object?> get props => [conversationId];
}

/// State emitted when an error occurs.
class SocketError extends ChatState {
  final String error;
  final String details;
  /// Takes a [String] that represents the error message and details.
  SocketError(this.error, this.details);

  @override
  List<Object?> get props => [error, details];
}