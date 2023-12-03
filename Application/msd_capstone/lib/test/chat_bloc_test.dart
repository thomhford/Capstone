import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../chat/bloc/chat_bloc.dart';

class MockSocket extends Mock implements IO.Socket {}

void main() {
  group('ChatBloc', () {
    late String currentUserId;

    setUp(() {
      currentUserId = '123';
    });

    blocTest<ChatBloc, ChatState>(
      'emits [SocketConnected] when ConnectEvent is added',
      build: () {
        return ChatBloc(currentUserId: currentUserId);
      },
      act: (bloc) => bloc.add(const ConnectEvent()),
      expect: () => [SocketConnected()],
    );
  });
}