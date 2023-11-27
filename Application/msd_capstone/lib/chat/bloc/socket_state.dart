part of 'socket_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.connected() = Connected;
  const factory ChatState.disconnected() = Disconnected;
  const factory ChatState.messageSent(ChatMessage message) = MessageSent;
  const factory ChatState.messageReceived(ChatMessage message) = MessageReceived;
  const factory ChatState.messageRead(String messageId) = MessageRead;
  const factory ChatState.messageDeleted(String messageId) = MessageDeleted;
  const factory ChatState.typingStarted(String recipientId) = TypingStarted;
  const factory ChatState.typingStopped(String recipientId) = TypingStopped;
}