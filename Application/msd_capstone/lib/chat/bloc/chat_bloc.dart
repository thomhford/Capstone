// chat/bloc/chat_bloc.dart

import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:equatable/equatable.dart';

import '../models/chat_user.dart';
import '../models/conversation.dart';
import '../models/chat_message.dart';

part 'chat_event.dart';
part 'chat_state.dart';

/// `ChatBloc` is a [Bloc] that manages the state of the chat feature in the application.
/// It uses [IO.Socket] to establish a real-time connection with the server.
/// It listens for various events from the server and emits corresponding states.
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  /// The socket used to communicate with the server.
  late final IO.Socket socket;

  /// A [Completer] that completes when the socket is initialized.
  final socketCompleter = Completer<IO.Socket>();

  /// The ID of the current user.
  final String currentUserId;

  /// The [FirebaseAuth] instance used to authenticate the WebSocket connection.
  final FirebaseAuth firebaseAuth;

  /// The current state of the chat feature. It stores the list of conversations and users.
  /// This is used to access the data in the UI and to update the data when the server sends new data.
  ChatData chatData = ChatData({}, {});

  /// Creates a new instance of `ChatBloc`.
  /// The [currentUserId] is required to know which user is currently logged in.
  /// The initial state of the bloc is [SocketDisconnected].
  /// The constructor also sets up various event listeners for the socket.
  /// These listeners emit corresponding states when the socket receives events from the server.
  /// The constructor also sets up bloc listeners for various events.
  /// These listeners emit corresponding states when the bloc receives events from the UI.
  /// The constructor also initializes the socket and waits for it to complete before setting up the listeners.
  /// This is done to ensure that the listeners are set up only after the socket is initialized.
  ChatBloc({
    required this.currentUserId,
    required this.firebaseAuth,
  }) : super(SocketDisconnected()) {
    // Initialize the socket when the bloc is created and wait for it to complete before setting up the listeners.
    _initSocket().then((_) {

      // This sets up an event listener for the 'connect' event of the socket.
      // When the socket successfully connects to the server, it triggers the 'connect' event.
      // The callback function adds a ConnectEvent to the ChatBloc.
      socket.onConnect((_) => add(const ConnectEvent()));

      // This sets up an event listener for the 'disconnect' event of the socket.
      // When the socket disconnects from the server, it triggers the 'disconnect' event.
      // The callback function adds a DisconnectEvent to the ChatBloc.
      socket.onDisconnect((_) => add(const DisconnectEvent()));

      // This sets up an event listener for a custom event named 'conversations list'.
      // When the server emits this event, it sends a list of conversations as data.
      // The callback function maps each item in the data to a Conversation object, creates a list of these objects,
      // and adds a ConversationsReceivedEvent with this list to the ChatBloc.
      socket.on('conversations list', (data) {
        List<Conversation> conversations = data.map<Conversation>((item) => Conversation.fromMap(item)).toList();
        add(ConversationsReceivedEvent(conversations));
      });

      // This sets up an event listener for a custom event named 'user list'.
      // When the server emits this event, it sends a list of users as data.
      // The callback function maps each item in the data to a ChatUser object, creates a list of these objects,
      // and adds a UsersReceivedEvent with this list to the ChatBloc.
      socket.on('user list', (data) {
        List<ChatUser> users = data.map<ChatUser>((item) => ChatUser.fromMap(item)).toList();
        add(UsersReceivedEvent(users));
      });

      // This sets up an event listener for a custom event named 'conversation created'.
      // When the server emits this event, it sends a Conversation object as data.
      // The callback function converts the data to a Conversation object and adds a NewConversationReceivedEvent with this conversation to the ChatBloc.
      socket.on('conversation created', (data) {
        print('Conversation created: $data');
        Conversation conversation = Conversation.fromMap(data);
        add(NewConversationReceivedEvent(conversation));
      });

      // This sets up an event listener for a custom event named 'new message'.
      // When the server emits this event, it sends a message as data.
      // The callback function converts the data to a ChatMessage object and adds a MessageReceivedEvent with this message to the ChatBloc.
      socket.on('new message', (data) {
        ChatMessage message = ChatMessage.fromJson(data);
        add(NewMessageEvent(message));
      });

      // This sets up an event listener for a custom event named 'message received'.
      // When the server emits this event, it sends the ID of the message and the ID of the conversation that was received as data.
      // The callback function adds a MessageReceivedEvent with this ID to the ChatBloc.
      socket.on('message received', (data) {
        int messageId = data['messageId'];
        int conversationId = data['conversationId'];
        add(MessageReceivedEvent(messageId, conversationId));
      });

      // This sets up an event listener for a custom event named 'message read receipt'.
      // When the server emits this event, it sends the ID of the message that was read as data.
      // The callback function adds a MessageReadReceiptEvent with this ID to the ChatBloc.
      socket.on('message read receipt', (data) {
        int messageId = data['messageId'];
        int conversationId = data['conversationId'];
        add(MessageReadReceiptEvent(messageId, conversationId));
      });

      // This sets up an event listener for a custom event named 'user typing receipt'.
      // When the server emits this event, it sends the ID of the user that is typing as data.
      // The callback function adds a UserTypingReceiptEvent with this ID to the ChatBloc.
      socket.on('user typing receipt', (data) {
        String userId = data['userId'];
        add(UserTypingReceiptEvent(userId));
      });

      // This sets up an event listener for a custom event named 'user stop typing receipt'.
      // When the server emits this event, it sends the ID of the user that stopped typing as data.
      // The callback function adds a UserTypingReceiptEvent with this ID to the ChatBloc.
      socket.on('user stop typing receipt', (data) {
        String userId = data['userId'];
        add(UserStopTypingReceiptEvent(userId));
      });

      // This sets up an event listener for a custom event named 'message deleted'.
      // When the server emits this event, it sends the ID of the message that was deleted as data.
      // The callback function adds a MessageDeletedEvent with this ID to the ChatBloc.
      socket.on('message deleted', (data) {
        int messageId = data['messageId'];
        int conversationId = data['conversationId'];
        add(MessageDeletedEvent(messageId, conversationId));
      });

      // This sets up an event listener for a custom event named 'conversation deleted'.
      // When the server emits this event, it sends the ID of the conversation that was deleted as data.
      // The callback function adds a ConversationDeletedEvent with this ID to the ChatBloc.
      socket.on('conversation deleted', (data) {
        int conversationId = data['conversationId'];
        add(ConversationDeletedEvent(conversationId));
      });

      // This sets up an event listener for a custom event named 'error'.
      // When the server emits this event, it indicates that an error has occurred.
      // The callback function adds an ErrorEvent to the ChatBloc.
      // Depending on the message of the error, will set the state to the corresponding error state.
      socket.on('error', (data) {
        String message = data['message'];
        String details = jsonEncode(data['details']);
        add(ErrorEvent(message, details));
      });
    });

    // This sets up bloc listeners for various events described below.
    on<ConnectEvent>(_onConnectEvent);
    on<DisconnectEvent>(_onDisconnectEvent);
    on<ConversationsReceivedEvent>(_onConversationsReceivedEvent);
    on<UsersReceivedEvent>(_onUsersReceivedEvent);
    on<NewConversationReceivedEvent>(_onNewConversationReceivedEvent);
    on<NewConversationEvent>(_onNewConversationEvent);
    on<NewMessageEvent>(_onNewMessageEvent);
    on<MessageReceivedEvent>(_onMessageReceivedEvent);
    on<MessageSentEvent>(_onMessageSentEvent);
    on<MessageReadEvent>(_onMessageReadEvent);
    on<MessageReadReceiptEvent>(_onMessageReadReceiptEvent);
    on<UserTypingEvent>(_onUserTypingEvent);
    on<UserTypingReceiptEvent>(_onUserTypingReceiptEvent);
    on<UserStopTypingEvent>(_onUserStopTypingEvent);
    on<UserStopTypingReceiptEvent>(_onUserStopTypingReceiptEvent);
    on<MessageDeletedEvent>(_onMessageDeletedEvent);
    on<DeleteMessageEvent>(_onDeleteMessageEvent);
    on<ConversationDeletedEvent>(_onConversationDeletedEvent);
    on<DeleteConversationEvent>(_onDeleteConversationEvent);
    on<ErrorEvent>(_onErrorEvent);
  }

  /// Initializes the socket.
  Future<void> _initSocket() async {
    final token = await firebaseAuth.currentUser!.getIdToken();
    socket = IO.io(
      'http://localhost:3000',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setQuery({'token': token})
          .setTimeout(3000)
          .setReconnectionDelay(5000)
          .disableAutoConnect()
          .build(),
    );
    socketCompleter.complete(socket);
  }

  /// Handles the [ConnectEvent].
  /// Connects to the socket and emits the [SocketConnected] state.
  /// It also registers the current user with the server and requests the list of conversations and users.
  Future<void> _onConnectEvent(ConnectEvent event, Emitter<ChatState> emit) async {
    socket.connect();
    socket.emit('register', currentUserId);
    requestConversations(currentUserId);
    socket.emit('request users', currentUserId);
    emit(SocketConnected());
  }

  /// Handles the [DisconnectEvent].
  /// Disconnects from the socket and emits the [SocketDisconnected] state.
  Future<void> _onDisconnectEvent(DisconnectEvent event, Emitter<ChatState> emit) async {
    socket.disconnect();
    emit(SocketDisconnected());
  }

  /// Handles the [ConversationsReceivedEvent].
  /// Emits the [SocketConversationsReceived] state with the received conversations.
  /// This is triggered when the server sends a list of conversations.
  /// Updates ChatData with received conversations.
  Future<void> _onConversationsReceivedEvent(ConversationsReceivedEvent event, Emitter<ChatState> emit) async {
    for (var conversation in event.conversations) {
      chatData.conversations[conversation.conversationId!] = conversation;
    }
    emit(ConversationsUpdated());
  }

  /// Handles the [UsersReceivedEvent].
  /// Emits the [SocketUsersReceived] state with the received users.
  /// This is triggered when the server sends a list of users.
  /// Updates ChatData with received users.
  Future<void> _onUsersReceivedEvent(UsersReceivedEvent event, Emitter<ChatState> emit) async {
    for (var user in event.users) {
      chatData.users[user.id] = user;
    }
    emit(UsersUpdated());
  }

  /// Handles the [NewConversationReceivedEvent].
  /// Emits the [SocketNewConversationReceived] state with the received conversation.
  /// This is triggered when the server sends a new conversation.
  /// Updates ChatData with the received conversation.
  Future<void> _onNewConversationReceivedEvent(NewConversationReceivedEvent event, Emitter<ChatState> emit) async {
    chatData.conversations[event.conversation.conversationId!] = event.conversation;
    emit(SocketNewConversationReceived(event.conversation));
    emit(ConversationsUpdated());
  }

  /// Handles the [NewConversationEvent].
  /// Emits the [SocketNewConversation] state with the IDs of the sender and recipient and the message.
  /// It also sends the 'new conversation' event to the server.
  /// This event is triggered when the user creates a new conversation.
  /// The server should respond with a 'conversation created' event which should add the conversation to the list of conversations.
  Future<void> _onNewConversationEvent(NewConversationEvent event, Emitter<ChatState> emit) async {
    socket.emit('create conversation', {'user1Id': event.user1Id, 'user2Id': event.user2Id});
    emit(SocketNewConversation(event.user1Id, event.user2Id));
  }

  /// Handles the [NewMessageEvent].
  /// Emits the [SocketNewMessage] state with the received message.
  /// It also sends the 'message delivered' event to the server.
  /// This event is triggered when the server sends a message to the client.
  /// Updates ChatData with the received message.
  /// If the conversation already exists in ChatData, it adds the message to the conversation.
  /// If the conversation does not exist in ChatData, it requests a new list of conversations from the server.
  Future<void> _onNewMessageEvent(NewMessageEvent event, Emitter<ChatState> emit) async {
    if (chatData.conversations.containsKey(event.message.conversationId)) {
      chatData.conversations[event.message.conversationId]!.messages[event
          .message.messageId] = event.message;
      emit(SocketNewMessage(event.message));
      emit(ConversationsUpdated());
      socket.emit('message delivered', event.message.messageId);
    } else {
      requestConversations(currentUserId);
      emit(SocketError('Error receiving message', 'Conversation does not exist to add message to...'));
    }
  }

  /// Handles the [MessageReceivedEvent].
  /// Emits the [SocketMessageReceived] state with the ID of the received message.
  /// This event is triggered when a message is marked as received in the server.
  /// Updates ChatData by updating the status of the message to 'isReceived' to true.
  Future<void> _onMessageReceivedEvent(MessageReceivedEvent event, Emitter<ChatState> emit) async {
    var conversation = chatData.conversations[event.conversationId];

    if (conversation == null) {
      requestConversations(currentUserId);
      emit(SocketError('Error receiving message', 'Conversation does not exist to update message status...'));
      return;
    }

    var oldMessage = conversation.messages[event.messageId];

    if (oldMessage == null) {
      requestConversations(currentUserId);
      emit(SocketError('Error receiving message', 'Message does not exist to update status...'));
      return;
    }

    var newMessage = oldMessage.copyWith(isReceived: true);
    conversation.messages[event.messageId] = newMessage;
    emit(SocketMessageReceived(event.messageId, event.conversationId));
    emit(ConversationsUpdated());
  }

  /// Handles the [MessageSentEvent].
  /// Emits the [SocketMessageSent] state with the sent message.
  /// It also sends the message to the server.
  /// This event is triggered when the user sends a message to the server.
  /// The server should respond with a 'message received' event which should add the message to the conversation.
  Future<void> _onMessageSentEvent(MessageSentEvent event, Emitter<ChatState> emit) async {
    socket.emit('message sent', event.message.toJson());
    emit(SocketMessageSent(event.message));
  }

  /// Handles the [MessageReadEvent].
  /// Emits the [SocketMessageRead] state with the ID of the read message.
  /// It also sends the ID of the read message to the server.
  /// This event is triggered when the user opens a conversation with unread messages
  /// The server should respond with a 'message read' event which should update the status of the message to 'read'.
  Future<void> _onMessageReadEvent(MessageReadEvent event, Emitter<ChatState> emit) async {
    socket.emit('message read', event.messageId);
  }

  /// Handles the [MessageReadReceiptEvent].
  /// Emits the [SocketMessageReadReceipt] state with the ID of the read message.
  /// This event is triggered when the server sends a 'message read' event.
  /// Updates ChatData creating a new message with the status set to 'read' and replaces the old message with the new one.
  Future<void> _onMessageReadReceiptEvent(MessageReadReceiptEvent event, Emitter<ChatState> emit) async {
    var conversation = chatData.conversations[event.conversationId];

    if (conversation == null) {
      requestConversations(currentUserId);
      emit(SocketError('Error reading message', 'Conversation does not exist to update message status...'));
      return;
    }

    var oldMessage = conversation.messages[event.messageId];

    if (oldMessage == null) {
      requestConversations(currentUserId);
      emit(SocketError('Error reading message', 'Message does not exist to update status...'));
      return;
    }

    var newMessage = oldMessage.copyWith(read: true);
    conversation.messages[event.messageId] = newMessage;

    emit(SocketMessageReadReceipt(event.messageId, event.conversationId));
    emit(ConversationsUpdated());
  }

  /// Handles the [UserTypingEvent].
  /// Emits the [SocketUserTyping] state with the ID of the typing user.
  /// It also sends the 'user typing' event to the server.
  /// This event is triggered when the user is typing.
  Future<void> _onUserTypingEvent(UserTypingEvent event, Emitter<ChatState> emit) async {
    socket.emit('user typing', event.userId);
    emit(SocketUserTyping(event.userId));
  }

  /// Handles the [UserTypingReceiptEvent].
  /// Emits the [SocketUserTypingReceipt] state with the ID of the typing user.
  /// This event is triggered when the server sends a 'user typing' event.
  Future<void> _onUserTypingReceiptEvent(UserTypingReceiptEvent event, Emitter<ChatState> emit) async {
    emit(SocketUserTypingReceipt(event.userId));
  }

  /// Handles the [UserStopTypingEvent].
  /// Emits the [SocketUserStopTyping] state with the ID of the user that stopped typing.
  /// It also sends the 'user stop typing' event to the server.
  /// This event is triggered when the user stops typing.
  Future<void> _onUserStopTypingEvent(UserStopTypingEvent event, Emitter<ChatState> emit) async {
    socket.emit('user stop typing', event.userId);
    emit(SocketUserStopTyping(event.userId));
  }

  /// Handles the [UserStopTypingReceiptEvent].
  /// Emits the [SocketUserStopTypingReceipt] state with the ID of the user that stopped typing.
  /// This event is triggered when the server sends a 'user stop typing' event.
  Future<void> _onUserStopTypingReceiptEvent(UserStopTypingReceiptEvent event, Emitter<ChatState> emit) async {
    emit(SocketUserStopTypingReceipt(event.userId));
  }

  /// Handles the [MessageDeletedEvent].
  /// Emits the [SocketMessageDeleted] state with the ID of the deleted message.
  /// This event is triggered when the server sends a 'message deleted' event.
  /// Updates ChatData by removing the message from the conversation.
  Future<void> _onMessageDeletedEvent(MessageDeletedEvent event, Emitter<ChatState> emit) async {
    if (chatData.conversations.containsKey(event.conversationId)) {
      try {
        chatData.conversations[event.conversationId]!.messages.remove(
            event.messageId);
      } catch (e) {
        requestConversations(currentUserId);
        emit(SocketError('Error deleting message', 'Could not delete message...\n ${e.toString()}'));
      }
      emit(SocketMessageDeleted(event.messageId, event.conversationId));
      emit(ConversationsUpdated());
    } else {
      requestConversations(currentUserId);
      emit(SocketError('Error deleting message', 'Conversation does not exist to delete message from...'));
    }
  }

  /// Handles the [DeleteMessageEvent].
  /// Emits the [SocketDeleteMessage] state with the ID of the deleted message.
  /// It also sends the 'delete message' event to the server.
  /// This event is triggered when the user deletes a message.
  /// The server should respond with a 'message deleted' event which should remove the message from the conversation.
  Future<void> _onDeleteMessageEvent(DeleteMessageEvent event, Emitter<ChatState> emit) async {
    socket.emit('delete message', event.messageId);
    emit(SocketDeleteMessage(event.messageId));
  }

  /// Handles the [ConversationDeletedEvent].
  /// Emits the [SocketConversationDeleted] state with the ID of the deleted conversation.
  /// This event is triggered when the server sends a 'conversation deleted' event.
  /// Updates ChatData by removing the conversation.
  Future<void> _onConversationDeletedEvent(ConversationDeletedEvent event, Emitter<ChatState> emit) async {
    if (chatData.conversations.containsKey(event.conversationId)) {
      try {
        chatData.conversations.remove(event.conversationId);
      } catch (e) {
        requestConversations(currentUserId);
        emit(SocketError('Error deleting conversation', 'Could not delete conversation...\n ${e.toString()}'));
      }
      emit(SocketConversationDeleted(event.conversationId));
      emit(ConversationsUpdated());
    } else {
      requestConversations(currentUserId);
      emit(SocketError('Error deleting conversation', 'Conversation does not exist to delete...'));
    }
  }

  /// Handles the [DeleteConversationEvent].
  /// Emits the [SocketDeleteConversation] state with the ID of the deleted conversation.
  /// It also sends the 'delete conversation' event to the server.
  /// This event is triggered when the user deletes a conversation.
  /// The server should respond with a 'conversation deleted' event which should remove the conversation.
  Future<void> _onDeleteConversationEvent(DeleteConversationEvent event, Emitter<ChatState> emit) async {
    socket.emit('delete conversation', event.conversationId);
    emit(SocketDeleteConversation(event.conversationId));
  }

  /// Handles the [ErrorEvent].
  /// Emits the [SocketError] state including the details of the error as default
  /// Emits the [SocketFetchConversationsFailed] state when the server sends an 'Error fetching conversations' event.
  /// Emits the [SocketFetchUsersFailed] state when the server sends an 'Error fetching user list' event.
  /// Emits the [SocketCreateConversationFailed] state when the server sends an 'Error creating conversation' event.
  /// Emits the [SocketSendMessageFailed] state when the server sends an 'Error sending message' event.
  /// Emits the [SocketNewMessageFailed] state when the server sends an 'Error receiving message' event.
  /// Emits the [SocketDeleteMessageFailed] state when the server sends an 'Error deleting message' event.
  /// Emits the [SocketDeleteConversationFailed] state when the server sends an 'Error deleting conversation' event.
  /// This event is triggered when the server sends an 'error' event.
  Future<void> _onErrorEvent(ErrorEvent event, Emitter<ChatState> emit) async {
    switch (event.message) {
      case 'Error fetching conversations':
        emit(SocketFetchConversationsFailed(event.details));
        break;
      case 'Error fetching user list':
        emit(SocketFetchUsersFailed(event.details));
        break;
      case 'Error creating conversation':
        emit(SocketCreateConversationFailed(event.details));
        break;
      case 'Error sending message':
        emit(SocketSendMessageFailed(event.details));
        break;
      case 'Error receiving message':
        emit(SocketNewMessageFailed(event.details));
        break;
      case 'Error deleting message':
        emit(SocketDeleteMessageFailed(event.details));
        break;
      case 'Error deleting conversation':
        emit(SocketDeleteConversationFailed(event.details));
        break;
      default:
        emit(SocketError(event.message, event.details));
    }
  }

  /// Helper function to request a new list of conversations from the server.
  void requestConversations(String userId) {
     socket.emit('request conversations', userId);
   }
}
