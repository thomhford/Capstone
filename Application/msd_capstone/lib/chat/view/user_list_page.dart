import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/chat/bloc/chat_bloc.dart';
import 'package:msd_capstone/widgets/widgets.dart';

import '../models/chat_user.dart';
import '../models/conversation.dart';
import 'conversation_page.dart';
import './widgets/widgets.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late ChatBloc _chatBloc;
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
  }

  String _searchQuery = '';

  void updateSearchQuery(String newQuery) {
    setState(() {
      _searchQuery = newQuery;
    });
  }

  void clearSearch() {
    searchController.clear();
    updateSearchQuery('');
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.primary,
        title: const Text(
          'User List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchWidget(
                searchFocusNode: searchFocusNode,
                searchController: searchController,
                updateSearchQuery: updateSearchQuery,
                clearSearch: clearSearch,
                theme: theme
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Scrollbar(
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
                        return const Center(
                          child: Text(
                            "No users found",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                              color: theme.colorScheme.secondary,
                            ),
                            child: ListTile(
                              title: Text(
                                '${user.firstName} ${user.lastName}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              leading: Avatar(
                                photo: user.photoUrl,
                                name: '${user.firstName} ${user.lastName}',
                                avatarSize: 25,
                              ),
                              subtitle: Text(
                                user.email,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              onTap: () {
                                final chatBloc =
                                    BlocProvider.of<ChatBloc>(context);
                                final currentUser = chatBloc.currentUserId;
                                final existingConversation = _chatBloc
                                    .chatData.conversations.values
                                    .firstWhere(
                                        (conversation) =>
                                            (conversation.user1.id ==
                                                    currentUser &&
                                                conversation.user2.id ==
                                                    user.id) ||
                                            (conversation.user1.id == user.id &&
                                                conversation.user2.id ==
                                                    currentUser),
                                        orElse: () => Conversation(
                                              conversationId: -1,
                                              user1: ChatUser(
                                                  id: '',
                                                  firstName: '',
                                                  lastName: '',
                                                  email: '',
                                                  updatedAt: DateTime.now(),
                                                  photoUrl: ''),
                                              user2: ChatUser(
                                                  id: '',
                                                  firstName: '',
                                                  lastName: '',
                                                  email: '',
                                                  updatedAt: DateTime.now(),
                                                  photoUrl: ''),
                                              messages: {},
                                              createdAt: DateTime.now(),
                                            ));
                                if (existingConversation.conversationId == -1) {
                                  // Create new conversation
                                  chatBloc.add(
                                      NewConversationEvent(currentUser, user.id));

                                  // Listen for the new conversation
                                  BlocListener<ChatBloc, ChatState>(
                                    listener: (context, state) {
                                      if (state
                                          is SocketNewConversationReceived) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ConversationPage(
                                                    conversation:
                                                        state.conversation),
                                          ),
                                        );
                                      }
                                    },
                                    child: const Center(
                                        child: CircularProgressIndicator()),
                                  );
                                } else {
                                  // Open existing conversation
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ConversationPage(
                                          conversation: existingConversation),
                                    ),
                                  );
                                }
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
