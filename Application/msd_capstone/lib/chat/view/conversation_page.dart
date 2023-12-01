// conversation_page.dart

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import '../models/models.dart';

class ConversationPage extends StatelessWidget {
  final Conversation conversation;
  final User currentUser;

  const ConversationPage({
    super.key,
    required this.conversation,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Chat(
            messages: conversation.toChatMessages(currentUser.id),
            showUserAvatars: true,
            showUserNames: true,
            onAttachmentPressed: () {
              print('Attachment pressed!');
            },
            onSendPressed: (message) {
              print('Message: ${message.text}');
            },
            user: conversation.getRecipientUser(currentUser.id),

          );
  }
}