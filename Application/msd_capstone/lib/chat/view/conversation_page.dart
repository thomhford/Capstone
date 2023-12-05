// conversation_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../app/bloc/app_bloc.dart';
import '../../widgets/widgets.dart';
import '../models/models.dart';

class ConversationPage extends StatelessWidget {
  final Conversation conversation;
  final AutoScrollController _scrollController = AutoScrollController();

  ConversationPage({
    super.key,
    required this.conversation,
  });

  @override
  Widget build(BuildContext context) {
    final currentUser = context.select((AppBloc bloc) => bloc.state.user);
    final recipient = conversation.getRecipientChatUser(currentUser.id);
    return Scaffold(
      appBar: ClickableAppBar(
        title: '${recipient.firstName} ${recipient.lastName}',
        onTap: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
      ),
      body: SafeArea(
        child: Chat(
          scrollController: _scrollController,
          messages: conversation.toChatMessages(),
          showUserAvatars: true,
          showUserNames: true,
          onAttachmentPressed: () {
            print('Attachment pressed!');
          },
          onSendPressed: (message) {
            print('Message: ${message.text}');
          },
          user: User(
            id: currentUser.id,
            firstName: currentUser.firstName,
            lastName: currentUser.lastName,
            imageUrl: currentUser.photo,
          ),
        ),
      ),
    );
  }
}
