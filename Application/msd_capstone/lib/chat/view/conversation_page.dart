// conversation_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import '../models/models.dart';
import '../services/services.dart';

class ConversationPage extends StatelessWidget {
  final Conversation conversation;

  const ConversationPage({
    super.key,
    required this.conversation,
  });

  @override
  Widget build(BuildContext context) {
    return Chat(
            messages: conversation.toChatMessages(),
            showUserAvatars: true,
            showUserNames: true,
            onAttachmentPressed: () {
              print('Attachment pressed!');
            },
            onSendPressed: (message) {
              print('Message: ${message.text}');
            },
            user: conversation.users['1']!.toChatUser(),
          );
  }
}