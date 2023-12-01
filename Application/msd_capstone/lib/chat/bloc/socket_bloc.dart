import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:logger/logger.dart';

import '../models/chat_message.dart';
import '../models/chat_user.dart';
import '../models/conversation.dart';
import 'socket_event_handler.dart';

part 'socket_bloc.freezed.dart';
part 'socket_event.dart';
part 'socket_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

final logger = Logger();

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final Socket _socket;
  late final SocketEventHandler _socketEventHandler;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final AuthenticationRepository _authenticationRepository;

  ChatBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const ChatState.disconnected()) {
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
    _socketEventHandler = SocketEventHandler(_socket, this, _authenticationRepository);
    _socketEventHandler.setupSocketListeners();
    _socketEventHandler.setupBlocListeners();
  }


  @override
  Future<void> close() {
    _socket.dispose();
    return super.close();
  }
}

