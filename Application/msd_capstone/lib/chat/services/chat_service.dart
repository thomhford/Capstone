// chat_service.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier {
  final FirebaseAuth auth;

  ChatService({
    required this.auth,
  });

  // SEND MESSAGE
  Future<void> sendMessage({
    required String message,
    required String recipientId,
  }) async {
    // get the current user
    final String currentUserId = auth.currentUser!.uid;
    final String currentUserEmail = auth.currentUser!.email!;
    final DateTime timestamp = DateTime.now();

    // get the recipient user

    // create a new message document
  }

  // GET MESSAGES
}
