// import 'package:bloc_test/bloc_test.dart';
// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
// import 'package:firebase_core/firebase_core.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:authentication_repository/authentication_repository.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
// import 'package:flutter_test/flutter_test.dart';
// import '../chat/bloc/chat_bloc.dart';
//
// const _mockFirebaseUserUid = 'mock-firebase-user-uid';
// const _mockFirebaseUserEmail = 'mock-firebase-user-email';
// const _mockFirebaseUserToken = 'mock-firebase-user-token';
//
// class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}
//
// class MockFirebaseUser extends Mock implements firebase_auth.User {}
//
// class MockFirebaseApp extends Mock implements FirebaseApp {}
//
// class MockAuthenticationRepository extends Mock implements AuthenticationRepository {}
//
// class MockSocket extends Mock implements IO.Socket {}
//
// void main() {
//   late firebase_auth.FirebaseAuth firebaseAuth;
//
//   setUpAll(() async {
//     TestWidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp();
//
//     when(() => firebaseAuth.instance).thenReturn(firebaseAuth);
//     when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
//     when(() => firebaseUser.uid).thenReturn(_mockFirebaseUserUid);
//     when(() => firebaseUser.email).thenReturn(_mockFirebaseUserEmail);
//     when(() => firebaseUser.getIdToken()).thenAnswer((_) async => _mockFirebaseUserToken);
//   });
//
//   late MockSocket mockSocket;
//
//   setUp(() {
//     mockSocket = MockSocket();
//     when(() => mockSocket.onConnect(any())).thenReturn(null);
//     when(() => mockSocket.onDisconnect(any())).thenReturn(null);
//     when(() => mockSocket.on('conversations list', any())).thenReturn(null);
//     when(() => mockSocket.on('message received', any())).thenReturn(null);
//     when(() => mockSocket.on('error', any())).thenReturn(null);
//     when(() => mockSocket.connect()).thenAnswer((_) => mockSocket);
//     when(() => mockSocket.disconnect()).thenAnswer((_) => mockSocket);
//     when(() => mockSocket.emit(any(), any())).thenReturn(null);
//   });
//   group('ChatBloc', () {
//     late MockAuthenticationRepository mockAuthenticationRepository;
//     late MockSocket mockSocket;
//     late ChatBloc chatBloc;
//
//     setUp(() {
//       mockAuthenticationRepository = MockAuthenticationRepository();
//       mockSocket = MockSocket();
//       chatBloc = ChatBloc(authenticationRepository: mockAuthenticationRepository);
//       chatBloc.socket = mockSocket;
//     });
//
//     tearDown(() {
//       chatBloc.close();
//     });
//
//     blocTest<ChatBloc, ChatState>(
//       'emits [SocketConnected] when ConnectEvent is added',
//       build: () => chatBloc,
//       act: (bloc) => bloc.add(const ConnectEvent()),
//       expect: () => <ChatState>[SocketConnected()],
//     );
//
//     blocTest<ChatBloc, ChatState>(
//       'emits [SocketDisconnected] when DisconnectEvent is added',
//       build: () => chatBloc,
//       act: (bloc) => bloc.add(const DisconnectEvent()),
//       expect: () => <ChatState>[SocketDisconnected()],
//     );
//
//     // Add more tests for the other events
//   });
// }