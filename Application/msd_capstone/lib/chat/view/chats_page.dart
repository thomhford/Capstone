// chats_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/chat/bloc/chat_bloc.dart';
import 'package:msd_capstone/chat/view/user_list/user_list_page.dart';
import 'package:msd_capstone/widgets/widgets.dart';
import '../models/models.dart';
import './widgets/widgets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
  final ScrollController scrollController = ScrollController();
  late ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
    _chatBloc.socketCompleter.future.then((_) {
      _chatBloc.add(const ConnectEvent());
    });
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
    _chatBloc.add(const DisconnectEvent());
    _chatBloc.close();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<Conversation> conversations =
        _chatBloc.chatData.conversations.values.toList();
    return Scaffold(
      appBar: ClickableAppBar(
        title: 'Messages',
        onTap: () {
          scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserListPage(),
                ),
              );
            },
            icon: Icon(
              Icons.create,
              color: theme.colorScheme.onBackground,
            ),
          ),
        ],
      ),
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchWidget(
                searchFocusNode: searchFocusNode,
                searchController: searchController,
                updateSearchQuery: updateSearchQuery,
                clearSearch: clearSearch,
                theme: theme),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Scrollbar(
                controller: scrollController,
                child: BlocListener<ChatBloc, ChatState>(
                  listener: (context, state) {
                    if (state is ConversationsUpdated) {
                      setState(() {});
                    }
                  },
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color: theme.colorScheme.secondaryContainer,
                      ),
                      child: Column(
                        children: [
                          RecentMessages(
                            conversations: conversations,
                            searchQuery: _searchQuery,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
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

// Sample Conversation
// {
// Create sample users
// final ChatUser sender = ChatUser(
//   id: '1',
//   firstName: 'John',
//   lastName: 'Doe',
//   email: 'JohnDoe@Test.com',
//   updatedAt: DateTime.now(),
//   photoUrl: 'https://i.imgur.com/TzEia5G.jpeg',
// );
// final ChatUser recipient = ChatUser(
//   id: '2',
//   firstName: 'Jane',
//   lastName: 'Doe',
//   email: 'JaneDoe@Test.com',
//   updatedAt: DateTime.now(),
//   photoUrl: 'https://i.imgur.com/TzEia5G.jpeg',
// );
//
// // Create a sample message
// final ChatMessage firstMessage = ChatMessage(
//   messageId: 1,
//   message: 'Hey, how\'s it going?',
//   read: false,
//   isReceived: true,
//   type: 'text',
//   conversationId: 1,
//   createdAt: DateTime.now().add(const Duration(minutes: 1)),
//   authorId: sender.id,
//   recipientId: recipient.id,
// );
//
// final ChatMessage secondMessage = ChatMessage(
//   messageId: 2,
//   message: 'Not bad, you?',
//   read: false,
//   isReceived: false,
//   type: 'text',
//   conversationId: 1,
//   createdAt: DateTime.now(),
//   authorId: recipient.id,
//   recipientId: sender.id,
// );
//
// // Create a map of messages
// final Map<int, ChatMessage> messages = {
//   firstMessage.messageId: firstMessage,
//   secondMessage.messageId: secondMessage,
// };
//
// // Create a sample conversation
// final Conversation conversation = Conversation(
//   conversationId: 1,
//   user1: sender,
//   user2: recipient,
//   messages: messages,
//   createdAt: DateTime.now(),
// );
// }
