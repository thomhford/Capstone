part of 'socket_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  // Client events
  const factory ChatEvent.sendMessage(ChatMessage message) = SendMessage;
  const factory ChatEvent.receiveMessage(ChatMessage message) = ReceiveMessage;
  const factory ChatEvent.connect() = Connect;
  const factory ChatEvent.disconnect() = Disconnect;
  const factory ChatEvent.readMessage(String messageId) = ReadMessage;
  const factory ChatEvent.deleteMessage(String messageId) = DeleteMessage;
  const factory ChatEvent.startTyping(String recipientId) = StartTyping;
  const factory ChatEvent.stopTyping(String recipientId) = StopTyping;

  // Server events
  const factory ChatEvent.receiveMessageFromServer(ChatMessage message) = ReceiveMessageFromServer;
  const factory ChatEvent.fetchConversations(List<Conversation> conversations) = FetchConversations;
  const factory ChatEvent.fetchUsers(List<ChatUser> users) = FetchUsers;
  const factory ChatEvent.readMessageFromServer(String messageId) = ReadMessageFromServer;
  const factory ChatEvent.typingFromServer(String senderId) = TypingFromServer;
  const factory ChatEvent.stopTypingFromServer(String senderId) = StopTypingFromServer;
  const factory ChatEvent.deleteMessageFromServer(String messageId) = DeleteMessageFromServer;
  const factory ChatEvent.deleteConversationFromServer(String conversationId) = DeleteConversationFromServer;
  const factory ChatEvent.errorFromServer(String error) = ErrorFromServer;
}