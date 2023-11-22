part of 'socket_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessage(ChatMessage message) = SendMessage;
  const factory ChatEvent.receiveMessage(ChatMessage message) = ReceiveMessage;
  const factory ChatEvent.connect() = Connect;
  const factory ChatEvent.disconnect() = Disconnect;
  const factory ChatEvent.readMessage(String messageId) = ReadMessage;
  const factory ChatEvent.deleteMessage(String messageId) = DeleteMessage;
  const factory ChatEvent.startTyping(String recipientId) = StartTyping;
  const factory ChatEvent.stopTyping(String recipientId) = StopTyping;
}