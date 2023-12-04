// chats_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/chat/bloc/chat_bloc.dart';
import 'package:msd_capstone/chat/view/widgets/user_list.dart';
import '../models/models.dart';
import './widgets/widgets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
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

  void _updateSearchQuery(String newQuery) {
    setState(() {
      _searchQuery = newQuery;
    });
  }

  void _clearSearch() {
    _searchController.clear();
    _updateSearchQuery('');
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _chatBloc.add(const DisconnectEvent());
    _chatBloc.close();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ScrollController scrollController = ScrollController();

    // Create sample users
    final ChatUser sender = ChatUser(
      id: '1',
      firstName: 'John',
      lastName: 'Doe',
      email: 'JohnDoe@Test.com',
      updatedAt: DateTime.now(),
      photoUrl: 'https://i.imgur.com/TzEia5G.jpeg',
    );
    final ChatUser recipient = ChatUser(
      id: '2',
      firstName: 'Jane',
      lastName: 'Doe',
      email: 'JaneDoe@Test.com',
      updatedAt: DateTime.now(),
      photoUrl: 'https://i.imgur.com/TzEia5G.jpeg',
    );

    // Create a sample message
    final ChatMessage firstMessage = ChatMessage(
      messageId: 1,
      message: 'Hey, how\'s it going?',
      read: false,
      isReceived: true,
      type: 'text',
      conversationId: 1,
      createdAt: DateTime.now().add(const Duration(minutes: 1)),
      authorId: sender.id,
      recipientId: recipient.id,
    );

    final ChatMessage secondMessage = ChatMessage(
      messageId: 2,
      message: 'Not bad, you?',
      read: false,
      isReceived: false,
      type: 'text',
      conversationId: 1,
      createdAt: DateTime.now(),
      authorId: recipient.id,
      recipientId: sender.id,
    );

    // Create a map of messages
    final Map<int, ChatMessage> messages = {
      firstMessage.messageId: firstMessage,
      secondMessage.messageId: secondMessage,
    };

    // Create a sample conversation
    final Conversation conversation = Conversation(
      conversationId: 1,
      user1: sender,
      user2: recipient,
      messages: messages,
      createdAt: DateTime.now(),
    );


    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state)
    {
      return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SafeArea(
          child: Scrollbar(
            controller: scrollController,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Messages',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserList(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.create,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: theme.colorScheme.secondary,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _searchController,
                                  focusNode: _searchFocusNode,
                                  onChanged: _updateSearchQuery,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 17,
                                      fontFamily: 'Quicksand',
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.white70,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                              // Only show the cancel button if the TextField is focused
                              if (_searchFocusNode.hasFocus)
                                IconButton(
                                  icon: const Icon(Icons.cancel),
                                  onPressed: _clearSearch,
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
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
                    child: Column(
                      children: [
                        RecentMessages(
                          conversations: [conversation],
                          searchQuery: _searchQuery,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
