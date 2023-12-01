part of 'socket_bloc.dart';

@freezed
class ChatState with _$ChatState {
  // Client states
  const factory ChatState.connected() = Connected;
  const factory ChatState.disconnected() = Disconnected;
  const factory ChatState.messageSent(ChatMessage message) = MessageSent;
  const factory ChatState.messageReceived(ChatMessage message) = MessageReceived;
  const factory ChatState.messageRead(String messageId) = MessageRead;
  const factory ChatState.messageDeleted(String messageId) = MessageDeleted;
  const factory ChatState.typingStarted(String recipientId) = TypingStarted;
  const factory ChatState.typingStopped(String recipientId) = TypingStopped;

  // Server states
  const factory ChatState.messageReceivedFromServer(ChatMessage message) = MessageReceivedFromServer;
  const factory ChatState.conversationsFetched(List<Conversation> conversations) = ConversationsFetched;
  const factory ChatState.messageReadFromServer(String messageId) = MessageReadFromServer;
  const factory ChatState.typingStartedFromServer(String senderId) = TypingStartedFromServer;
  const factory ChatState.typingStoppedFromServer(String senderId) = TypingStoppedFromServer;
  const factory ChatState.messageDeletedFromServer(String messageId) = MessageDeletedFromServer;
  const factory ChatState.conversationDeletedFromServer(String conversationId) = ConversationDeletedFromServer;
  const factory ChatState.errorStateFromServer(String error) = ErrorStateFromServer;
}