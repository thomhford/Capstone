// conversation_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../app/bloc/app_bloc.dart';
import '../../widgets/widgets.dart';
import '../bloc/chat_bloc.dart' as chat_bloc;
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
        subtitle: recipient.email,
        onTap: () {
          _scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
      ),
      body: SafeArea(
        child: BlocBuilder<chat_bloc.ChatBloc, chat_bloc.ChatState>(
          builder: (context, state) {
            if ( state is chat_bloc.SocketMessageSent ) {
              // When a new message is received, update the messages in the Chat widget
              return Chat(
                scrollController: _scrollController,
                messages: conversation.toChatMessages(),
                showUserAvatars: true,
                showUserNames: true,
                onSendPressed: (message) {
                  // Create a new ChatMessage object
                  final newMessage = ChatMessage(
                    message: message.text,
                    read: false,
                    isReceived: false,
                    type: 'text',
                    conversationId: conversation.conversationId!,
                    authorId: currentUser.id,
                  );
                  // Add a MessageSentEvent to the ChatBloc
                  BlocProvider.of<chat_bloc.ChatBloc>(context).add(chat_bloc.MessageSentEvent(newMessage));
                },
                user: User(
                  id: currentUser.id,
                  firstName: currentUser.firstName,
                  lastName: currentUser.lastName,
                  imageUrl: currentUser.photo,
                ),
              );
            } else {
              // If the state is not one of the above, return the Chat widget without updating the messages
              return Chat(
                scrollController: _scrollController,
                messages: conversation.toChatMessages(),
                showUserAvatars: true,
                showUserNames: true,
                onSendPressed: (message) {
                  // Create a new ChatMessage object
                  final newMessage = ChatMessage(
                    message: message.text,
                    read: false,
                    isReceived: false,
                    type: 'text',
                    conversationId: conversation.conversationId!,
                    authorId: currentUser.id,
                  );
                  // Add a MessageSentEvent to the ChatBloc
                  BlocProvider.of<chat_bloc.ChatBloc>(context).add(chat_bloc.MessageSentEvent(newMessage));
                },
                user: User(
                  id: currentUser.id,
                  firstName: currentUser.firstName,
                  lastName: currentUser.lastName,
                  imageUrl: currentUser.photo,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
