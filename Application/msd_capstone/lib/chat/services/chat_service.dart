// chat_service.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:logger/logger.dart';
import '../models/message.dart';

final logger = Logger();

class ChatService extends ChangeNotifier {
  final FirebaseAuth auth;
  late IO.Socket socket;

  // Lists of messages
  List<User> users = [];
  List<Message> messages = [];

  ChatService({
    required this.auth,
  }) {
    connect();
  }

  void connect() async {
    final token = await auth.currentUser!.getIdToken();
    socket = IO.io('http://localhost:3000', <String, dynamic>{ // TODO: implement (wss://)
      'transports': ['websocket'],
      'query': {
        'token': token,
      }
    });

    socket.onConnect((_) {
      logger.i('Connected');
      socket.emit('register', auth.currentUser!.uid);
    });

    socket.onDisconnect((_) => logger.i('Disconnected'));

    socket.on('message received', (data) {
      // Parse the data into a Message
      Message message = Message(
        senderId: data['sender_id'],
        recipientId: data['recipient_id'],
        message: data['message'],
        read: data['is_read'],
        isReceived: data['is_received'],
        type: data['type'],
        timestamp: DateTime.parse(data['timestamp']),
      );
      // Add the message to the list of messages
      messages.add(message);
    });

    socket.on('message deleted', (data) {
      // TODO: handle deleted message
    });

    socket.on('typing', (data) {
      // TODO: handle typing indicator
    });

    socket.on('stop typing', (data) {
      // TODO: handle stop typing indicator
    });

    socket.on('read', (data) {
      // TODO: handle read receipt
    });

    socket.onError((data) {
      logger.e('Error: $data');
    });
  }

  Future<void> sendMessage({
    required String recipientId,
    required String message,
  }) async {
    final String senderId = auth.currentUser!.uid;
    socket.emit('message sent', {
      'senderId': senderId,
      'recipientId': recipientId,
      'message': message,
      'type': 'text',
    });
  }

  void deleteMessage(String messageId) {
    socket.emit('delete message', messageId);
  }

  void startTyping(String recipientId) {
    socket.emit('typing', {
      'senderId': auth.currentUser!.uid,
      'recipientId': recipientId,
    });
  }

  void stopTyping(String recipientId) {
    socket.emit('stop typing', {
      'senderId': auth.currentUser!.uid,
      'recipientId': recipientId,
    });
  }

  void readMessage(String messageId) {
    socket.emit('read', {
      'readerId': auth.currentUser!.uid,
      'messageId': messageId,
    });
  }

  void disconnect() {
    socket.disconnect();
  }
}