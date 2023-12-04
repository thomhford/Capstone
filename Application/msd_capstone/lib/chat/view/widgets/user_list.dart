import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/chat/bloc/chat_bloc.dart';

import '../../models/chat_user.dart';
import '../../models/conversation.dart';
import '../conversation_page.dart';


class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: SafeArea(
        child: BlocListener<ChatBloc, ChatState>(
            listener: (context, state) {
              if (state is UsersUpdated) {
                setState(() {});
              }
            },
            child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
          final users = _chatBloc.chatData.users.values.toList();
          if (users.isEmpty) {
            return const Center(child: Text("No users found"));
          }
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.imgur.com/TzEia5G.jpeg'),
                ),
                onTap: () {
                      final chatBloc = BlocProvider.of<ChatBloc>(context);
                      final currentUser = chatBloc.currentUserId;
                      final existingConversation = _chatBloc.chatData.conversations.values
                          .firstWhere((conversation) =>
                      (conversation.user1.id == currentUser && conversation.user2.id == user.id) ||
                          (conversation.user1.id == user.id && conversation.user2.id == currentUser),
                          orElse: () => Conversation(
                            conversationId: -1,
                            user1: ChatUser(id: '', firstName: '', lastName: '', email: '', updatedAt: DateTime.now(), photoUrl: ''),
                            user2: ChatUser(id: '', firstName: '', lastName: '', email: '', updatedAt: DateTime.now(), photoUrl: ''),
                            messages: {},
                            createdAt: DateTime.now(),
                          ));
                      if (existingConversation.conversationId == -1) {
                        // Create new conversation
                        chatBloc.add(NewConversationEvent(currentUser, user.id));

                        // Listen for the new conversation
                        BlocListener<ChatBloc, ChatState>(
                          listener: (context, state) {
                            if (state is SocketNewConversationReceived) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ConversationPage(conversation: state.conversation),
                                ),
                              );
                            }
                          },
                          child: const Center(child: CircularProgressIndicator()),
                        );

                      } else {
                        // Open existing conversation
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConversationPage(conversation: existingConversation),
                          ),
                        );
                      }
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}