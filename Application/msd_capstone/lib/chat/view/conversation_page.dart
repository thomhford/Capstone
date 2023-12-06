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

class ConversationPage extends StatefulWidget {
  final Conversation conversation;

  const ConversationPage({
    super.key,
    required this.conversation,
  });

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final AutoScrollController _scrollController = AutoScrollController();
  late chat_bloc.ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<chat_bloc.ChatBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentUser = context.select((AppBloc bloc) => bloc.state.user);
    final recipient = widget.conversation.getRecipientChatUser(currentUser.id);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
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
        child: BlocListener<chat_bloc.ChatBloc, chat_bloc.ChatState>(
          listener: (context, state) {
            if (state is chat_bloc.SocketMessageReceived) {
              setState(() {});
            }
          },
          child: Chat(
            scrollController: _scrollController,
            messages: _chatBloc.chatData.conversations[widget.conversation.conversationId]!.toChatMessages(),
            onSendPressed: (message) {
              // Create a new ChatMessage object
              final newMessage = ChatMessage(
                message: message.text,
                read: false,
                isReceived: false,
                type: 'text',
                conversationId: widget.conversation.conversationId!,
                authorId: currentUser.id,
              );
              // Add a MessageSentEvent to the ChatBloc
              BlocProvider.of<chat_bloc.ChatBloc>(context)
                  .add(chat_bloc.MessageSentEvent(newMessage));
            },
            user: User(
              id: currentUser.id,
              firstName: currentUser.firstName,
              lastName: currentUser.lastName,
              imageUrl: currentUser.photo,
            ),
            theme: DefaultChatTheme(
              backgroundColor: theme.colorScheme.background,
              inputBackgroundColor: theme.colorScheme.primary,
              inputTextColor: theme.colorScheme.onPrimary,
              primaryColor: theme.colorScheme.primaryContainer,
              secondaryColor: theme.colorScheme.onPrimary,
              sendButtonIcon: Icon(
                Icons.send,
                color: theme.colorScheme.onPrimary,
              ),
              inputBorderRadius: BorderRadius.circular(20),
            )
          ),
        ),
      ),
    );
  }
}
