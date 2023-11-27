import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:msd_capstone/chat/models/chat_message.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:logger/logger.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

final logger = Logger();

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final Socket _socket;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  ChatBloc() : super(ChatState.disconnected()) {
    _initSocket();
  }

  Future<void> _initSocket() async {
    final token = await _firebaseAuth.currentUser!.getIdToken();
    _socket = io(
      'http://localhost:3000',
      OptionBuilder()
          .setTransports(['websocket'])
          .setQuery({'token': token})
          .setTimeout(3000)
          .setReconnectionDelay(5000)
          .disableAutoConnect()
          .build(),
    );

    _socket.on('message', (data) => add(ChatEvent.receiveMessage(ChatMessage.fromJson(data))));

    on<Connect>((event, emit) {
      logger.i('Connected');
      _socket.connect();
      _socket.emit('register', _firebaseAuth.currentUser!.uid);
      emit(ChatState.connected());
    });
    on<Disconnect>((event, emit) {
      logger.i('Disconnected');
      _socket.disconnect();
      emit(ChatState.disconnected());
    });
    on<SendMessage>((event, emit) {
      logger.i('Sending message: ${event.message}');
      _socket.emit('message sent', event.message);
      emit(ChatState.messageSent(event.message));
    });
    on<ReceiveMessage>((event, emit) {
      logger.i('Received message: ${event.message}');
      _socket.emit('message received', event.message);
      emit(ChatState.messageReceived(event.message));
    });
    on<ReadMessage>((event, emit) {
      logger.i('Message marked read: ${event.messageId}');
      _socket.emit('read', event.messageId);
      emit(ChatState.messageRead(event.messageId));
    });
    on<DeleteMessage>((event, emit) {
      logger.i('Message deleted: ${event.messageId}');
      _socket.emit('delete message', event.messageId);
      emit(ChatState.messageDeleted(event.messageId));
    });
    on<StartTyping>((event, emit) {
      logger.i('${event.recipientId} started typing');
      _socket.emit('typing', event.recipientId);
      emit(ChatState.typingStarted(event.recipientId));
    });
    on<StopTyping>((event, emit) {
      logger.i('${event.recipientId} stopped typing');
      _socket.emit('stop typing', event.recipientId);
      emit(ChatState.typingStopped(event.recipientId));
    });
  }

  @override
  Future<void> close() {
    _socket.dispose();
    return super.close();
  }
}