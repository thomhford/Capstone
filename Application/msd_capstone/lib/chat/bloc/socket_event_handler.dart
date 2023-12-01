// socket_event_handler.dart

import 'dart:math';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:msd_capstone/chat/models/models.dart';
import 'package:socket_io_client/socket_io_client.dart';

import 'socket_bloc.dart';

class SocketEventHandler {
  final Socket _socket;
  final ChatBloc _chatBloc;
  final AuthenticationRepository _authenticationRepository;

  SocketEventHandler(this._socket, this._chatBloc, this._authenticationRepository);

  // ************************ Socket events from server to client ************************
  void setupSocketListeners() {
    _setupConnectionListeners();
    _setupMessageListeners();
    _setupConversationListeners();
    _setupUserListeners();
    _setupTypingListeners();
    _setupErrorListeners();
  }
  _setupConnectionListeners() {
    // Listen for the 'connect' event
    _socket.on('connect', (_) {
      _chatBloc.add(const ChatEvent.connect());
    });
    // Listen for the 'disconnect' event
    _socket.on('disconnect', (_) {
      _chatBloc.add(const ChatEvent.disconnect());
    });
  }
  _setupMessageListeners(){
    // Listen for the 'message received' event
    _socket.on('message received', (data) {
      ChatMessage message = ChatMessage.fromJson(data);
      _chatBloc.add(ChatEvent.receiveMessageFromServer(message));
      logger.i(data);
    });
    // Listen for the 'read' event
    _socket.on('read', (data) {
      logger.i(data);
      String messageId = data['messageId'];
      _chatBloc.add(ChatEvent.readMessageFromServer(messageId));
    });
    // Listen for the 'message deleted' event
    _socket.on('message deleted', (data) {
      String messageId = data['messageId'];
      _chatBloc.add(ChatEvent.deleteMessageFromServer(messageId));
      logger.i(data);
    });
  }
  _setupConversationListeners(){
    // Listen for the 'conversations fetched' event
    _socket.on('conversations fetched', (data){
      List<Conversation> conversations = data.map((item) => Conversation.fromMap(item)).toList();
      _chatBloc.add(ChatEvent.fetchConversations(conversations));
      logger.i(data);
    });
    // Listen for the 'conversation deleted' event
    _socket.on('conversation deleted', (data) {
      String conversationId = data['conversationId'];
      _chatBloc.add(ChatEvent.deleteConversationFromServer(conversationId));
      logger.i(data);
    });
  }
  _setupUserListeners(){
    // Listen for the 'user list fetched' event
    _socket.on('user list fetched', (data) {
      List<ChatUser> users = data.map((item) => ChatUser.fromMap(item)).toList();
      _chatBloc.add(ChatEvent.fetchUsers(users));
      logger.i(data);
    });
  }
  _setupTypingListeners(){
    // Listen for the 'typing' event
    _socket.on('typing', (data) {
      String senderId = data['senderId'];
      _chatBloc.add(ChatEvent.typingFromServer(senderId));
      logger.i(data);
    });
    // Listen for the 'stop typing' event
    _socket.on('stop typing', (data) {
      String senderId = data['senderId'];
      _chatBloc.add(ChatEvent.stopTypingFromServer(senderId));
      logger.i(data);
    });
  }
  _setupErrorListeners(){
    // Listen for the 'error' event
    _socket.on('error', (data) {
      String error = data['error'];
      _chatBloc.add(ChatEvent.errorFromServer(error));
      logger.e(data);
    });
  }

  // Bloc events
  void setupBlocListeners() {
    _setupBlocEventsFromServer();
    _setupBlocEventsToServer();
  }

  // ************************ Bloc events from server to client ************************
  _setupBlocEventsFromServer(){
    _chatBloc.on<ReceiveMessageFromServer>((event, emit) {
      emit(ChatState.messageReceivedFromServer(event.message));
    });
    // Request conversations on connect
    _chatBloc.on<FetchConversations>((event, emit) {
      logger.i('Fetching conversations');
      emit(ChatState.conversationsFetched(event.conversations));
    });
    // Request users on connect
    _chatBloc.on<FetchUsers>((event, emit) {
      logger.i('Fetching users');
      emit(ChatState.usersFetched(event.users));
    });
    _chatBloc.on<ReadMessageFromServer>((event, emit) {
      logger.i('Message marked read: ${event.messageId}');
      emit(ChatState.messageReadFromServer(event.messageId));
    });
    _chatBloc.on<TypingFromServer>((event, emit) {
      logger.i('${event.senderId} started typing');
      emit(ChatState.typingStartedFromServer(event.senderId));
    });
    _chatBloc.on<StopTypingFromServer>((event, emit) {
      logger.i('${event.senderId} stopped typing');
      emit(ChatState.typingStoppedFromServer(event.senderId));
    });
    _chatBloc.on<DeleteMessageFromServer>((event, emit) {
      logger.i('Message deleted: ${event.messageId}');
      emit(ChatState.messageDeletedFromServer(event.messageId));
    });
    _chatBloc.on<DeleteConversationFromServer>((event, emit) {
      logger.i('Conversation deleted: ${event.conversationId}');
      emit(ChatState.conversationDeletedFromServer(event.conversationId));
    });
    _chatBloc.on<ErrorFromServer>((event, emit) {
      logger.e('Error: ${event.error}');
      emit(ChatState.errorStateFromServer(event.error));
    });
  }

  // ************************ Bloc and Socket events from client to server ************************
  _setupBlocEventsToServer(){
    String currentUserId = _authenticationRepository.currentUser.id;
    logger.i('Current user id: $currentUserId');
    _chatBloc.on<Connect>((event, emit) {
      logger.i('Connected');
      _socket.connect();
      _socket.emit('register', currentUserId);
      emit(const ChatState.connected());
    });
    _chatBloc.on<Disconnect>((event, emit) {
      logger.i('Disconnected');
      _socket.disconnect();
      emit(const ChatState.disconnected());
    });
    _chatBloc.on<RequestConversations>((event, emit) {
      logger.i('Requesting conversations');
      _socket.emit('request conversations');
    });
    _chatBloc.on<RequestUsers>((event, emit) {
      logger.i('Requesting users');
      _socket.emit('request users');
    });
    _chatBloc.on<SendMessage>((event, emit) {
      logger.i('Sending message: ${event.message}');
      _socket.emit('message sent', event.message);
      emit(ChatState.messageSent(event.message));
    });
    _chatBloc.on<ReceiveMessage>((event, emit) {
      logger.i('Received message: ${event.message}');
      _socket.emit('message received', event.message);
      emit(ChatState.messageReceived(event.message));
    });
    _chatBloc.on<ReadMessage>((event, emit) {
      logger.i('Message marked read: ${event.messageId}');
      _socket.emit('read', event.messageId);
      emit(ChatState.messageRead(event.messageId));
    });
    _chatBloc.on<DeleteMessage>((event, emit) {
      logger.i('Message deleted: ${event.messageId}');
      _socket.emit('delete message', event.messageId);
      emit(ChatState.messageDeleted(event.messageId));
    });
    _chatBloc.on<StartTyping>((event, emit) {
      logger.i('${event.recipientId} started typing');
      _socket.emit('typing', event.recipientId);
      emit(ChatState.typingStarted(event.recipientId));
    });
    _chatBloc.on<StopTyping>((event, emit) {
      logger.i('${event.recipientId} stopped typing');
      _socket.emit('stop typing', event.recipientId);
      emit(ChatState.typingStopped(event.recipientId));
    });

  }
}
