import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../chat/bloc/chat_bloc.dart';
import '../chat/models/chat_message.dart';
import '../chat/models/chat_user.dart';
import '../chat/models/conversation.dart';

class MockSocket extends Mock implements IO.Socket {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements User {}

class MockChatData extends Mock implements ChatData {}

// Mock users
ChatUser mockUser1 = ChatUser(
  id: 'user1',
  firstName: 'John',
  lastName: 'Doe',
  photoUrl: 'http://example.com/profile1.jpg',
  email: 'user1@test.test',
  updatedAt: DateTime.now(),
);

ChatUser mockUser2 = ChatUser(
  id: 'user2',
  firstName: 'Jane',
  lastName: 'Doe',
  photoUrl: 'http://example.com/profile2.jpg',
  email: 'user2@test.test',
  updatedAt: DateTime.now(),
);

// Mock users map
Map<String, ChatUser> mockUsers = {
  mockUser1.id: mockUser1,
  mockUser2.id: mockUser2,
};


// Mock messages
ChatMessage mockMessage1 = ChatMessage(
  messageId: 1,
  message: 'Hello Jane',
  read: false,
  isReceived: false,
  type: 'text',
  conversationId: 1,
  createdAt: DateTime.now(),
  authorId: mockUser1.id,
);

ChatMessage mockMessage2 = ChatMessage(
  messageId: 2,
  message: 'Hello John',
  read: false,
  isReceived: true,
  type: 'text',
  conversationId: 1,
  createdAt: DateTime.now(),
  authorId: mockUser2.id,
);

// Create a map of mockMessages
final Map<int, ChatMessage> mockMessages = {
  mockMessage1.messageId!: mockMessage1,
  mockMessage2.messageId!: mockMessage2,
};

// Mock conversation
Conversation mockConversation = Conversation(
  conversationId: mockMessage1.conversationId,
  user1: mockUser1,
  user2: mockUser2,
  messages: {},
  createdAt: DateTime.now(),
);

// Map of conversations
Map<int, Conversation> mockConversations = {
  mockConversation.conversationId!: mockConversation,
};

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;
  late MockChatData mockChatData;

  setUpAll(() {
    registerFallbackValue(MockUser());
  });

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
    when(() => mockFirebaseAuth.currentUser).thenReturn(mockUser);
    when(() => mockUser.getIdToken(false)).thenAnswer((_) async => 'mock_token');

    mockChatData = MockChatData();
    when(() => mockChatData.conversations).thenReturn({
      1: Conversation(
        conversationId: 1,
        user1: ChatUser(id: 'user1', firstName: 'John', lastName: 'Doe', photoUrl: 'http://example.com/profile1.jpg', email: 'user1@test.test', updatedAt: DateTime.now()),
        user2: ChatUser(id: 'user2', firstName: 'Jane', lastName: 'Doe', photoUrl: 'http://example.com/profile2.jpg', email: 'user2@test.test', updatedAt: DateTime.now()),
        messages: {},
        createdAt: DateTime.now(),
      ),
    });

    when(() => mockChatData.users).thenReturn({
      'user1': ChatUser(id: 'user1', firstName: 'John', lastName: 'Doe', photoUrl: 'http://example.com/profile1.jpg', email: 'user1@test.test', updatedAt: DateTime.now()),
      'user2': ChatUser(id: 'user2', firstName: 'Jane', lastName: 'Doe', photoUrl: 'http://example.com/profile2.jpg', email: 'user2@test.test', updatedAt: DateTime.now()),
    });
  });

  group('ChatBloc', () {
    late String currentUserId;

    setUp(() {
      currentUserId = '123';
    });

    blocTest<ChatBloc, ChatState>(
      'emits [SocketConnected] when ConnectEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(const ConnectEvent()),
      expect: () => [SocketConnected()],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketDisconnected] when DisconnectEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(const DisconnectEvent()),
      expect: () => [SocketDisconnected()],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketConversationsReceived] when ConversationsReceivedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ConversationsReceivedEvent([])),
      expect: () => [SocketConversationsReceived()],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketFetchConversationsFailed] when ErrorEvent is added and message is "Error fetching conversations"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error fetching conversations', '123')),
      expect: () => [SocketFetchConversationsFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketUsersReceived] when UsersReceivedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(UsersReceivedEvent([])),
      expect: () => [SocketUsersReceived()],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketFetchUsersFailed] when ErrorEvent is added and message is "Error fetching user list"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error fetching user list', '123')),
      expect: () => [SocketFetchUsersFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketNewConversationReceived] when NewConversationReceivedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(NewConversationReceivedEvent(mockConversation)),
      expect: () => [SocketNewConversationReceived(mockConversation)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketNewConversation] when NewConversationEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(NewConversationEvent('1', '2')),
      expect: () => [SocketNewConversation('1', '2')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketCreateConversationFailed] when ErrorEvent is added and message is "Error creating conversation"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error creating conversation', '123')),
      expect: () => [SocketCreateConversationFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageReceived] when MessageReceivedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(NewMessageEvent(mockMessage1)),
      expect: () => [SocketNewMessage(mockMessage1)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageSent] when MessageSentEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(MessageSentEvent(mockMessage1)),
      expect: () => [SocketMessageSent(mockMessage1)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketReceiveMessageFailed] when ErrorEvent is added and message is "Error receiving message"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error receiving message', '123')),
      expect: () => [SocketNewMessageFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketSendMessageFailed] when ErrorEvent is added and message is "Error sending message"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error sending message', '123')),
      expect: () => [SocketSendMessageFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageSent] with mockMessage2 overriding mockMessage1 when MessageSentEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketMessageSent(mockMessage1),
      act: (bloc) => bloc.add(MessageSentEvent(mockMessage2)),
      expect: () => [SocketMessageSent(mockMessage2)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageReceived] with mockMessage2 overriding mockMessage1 when MessageReceivedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () {
        SocketNewMessage(mockMessage1);
        return ChatData(mockConversations, mockUsers);
        },
      act: (bloc) => bloc.add(NewMessageEvent(mockMessage2)),
      expect: () => [SocketNewMessage(mockMessage2)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageReadReceipt] when MessageReadReceiptEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(MessageReadReceiptEvent(mockMessage1.messageId!, mockMessage1.conversationId)),
      expect: () => [SocketMessageReadReceipt(mockMessage1.messageId!, mockMessage1.conversationId)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageReadReceipt] with mockMessage2 overriding mockMessage1 when MessageReadReceiptEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketMessageReadReceipt(mockMessage1.messageId!, mockMessage1.conversationId),
      act: (bloc) => bloc.add(MessageReadReceiptEvent(mockMessage2.messageId!, mockMessage2.conversationId)),
      expect: () => [SocketMessageReadReceipt(mockMessage2.messageId!, mockMessage2.conversationId)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketUserTyping] when UserTypingEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(UserTypingEvent(mockUser1.id)),
      expect: () => [SocketUserTyping(mockUser1.id)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketUserTypingReceipt] when UserTypingReceiptEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(UserTypingReceiptEvent(mockUser1.id)),
      expect: () => [SocketUserTypingReceipt(mockUser1.id)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketUserStopTyping] when UserTypingReceiptEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(UserStopTypingEvent(mockUser1.id)),
      expect: () => [SocketUserStopTyping(mockUser1.id)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketUserStopTypingReceipt] when UserStopTypingReceiptEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(UserStopTypingReceiptEvent(mockUser1.id)),
      expect: () => [SocketUserStopTypingReceipt(mockUser1.id)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketMessageDeleted] when MessageDeletedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketNewMessage(mockMessage1),
      act: (bloc) => bloc.add(MessageDeletedEvent(mockMessage1.messageId!, mockMessage1.conversationId)),
      expect: () => [SocketMessageDeleted(mockMessage1.messageId!, mockMessage1.conversationId)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketDeleteMessageFailed] when ErrorEvent is added and message is "Error deleting message"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketNewMessage(mockMessage1),
      act: (bloc) => bloc.add(ErrorEvent('Error deleting message', '123')),
      expect: () => [SocketDeleteMessageFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketDeleteMessage] when DeleteMessageEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketNewMessage(mockMessage1),
      act: (bloc) => bloc.add(DeleteMessageEvent(mockMessage1.messageId!)),
      expect: () => [SocketDeleteMessage(mockMessage1.messageId!)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketDeleteConversationFailed] when ErrorEvent is added and message is "Error deleting conversation"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketNewMessage(mockMessage1),
      act: (bloc) => bloc.add(ErrorEvent('Error deleting conversation', '123')),
      expect: () => [SocketDeleteConversationFailed('123')],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketConversationDeleted] when ConversationDeletedEvent is added',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      seed: () => SocketNewMessage(mockMessage1),
      act: (bloc) => bloc.add(ConversationDeletedEvent(mockMessage1.conversationId)),
      expect: () => [SocketConversationDeleted(mockMessage1.conversationId)],
    );

    blocTest<ChatBloc, ChatState>(
      'emits [SocketError] when ErrorEvent is added and message is not "Error fetching conversations", '
          '"Error fetching user list", "Error creating conversation", "Error receiving message", '
          '"Error sending message", "Error deleting message", or "Error deleting conversation"',
      build: () {
        return ChatBloc(firebaseAuth: mockFirebaseAuth, currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(ErrorEvent('Error', '123')),
      expect: () => [SocketError('Error','123')],
    );

  });
}