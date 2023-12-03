import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../chat/bloc/chat_bloc.dart';

class MockSocket extends Mock implements IO.Socket {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements User {}

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;

  setUpAll(() {
    registerFallbackValue(MockUser());
  });

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();

    when(() => mockFirebaseAuth.currentUser).thenReturn(mockUser);
    when(() => mockUser.getIdToken(false)).thenAnswer((_) async => 'mock_token');
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
  });
}