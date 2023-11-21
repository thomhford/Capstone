// chats_page.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

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
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ScrollController scrollController = ScrollController();
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
                            onPressed: () {}, // TODO: implement new message button
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
                        messages: [
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John Smith',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going hhhhhhhhhhhhhh?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                          Message(
                            user: User(
                              id: '1',
                              name: 'John',
                              imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                            ),
                            text: 'Hey, how\'s it going?',
                            timestamp: DateTime.now(),
                          ),
                        ],
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
  }
}

class RecentMessages extends StatelessWidget {
  final List<Message> messages;
  final String searchQuery;

  const RecentMessages({
    super.key,
    required this.messages,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    final List<Message> filteredMessages = messages.where((message) {
      final String query = searchQuery.toLowerCase();
      final String messageText = message.text.toLowerCase();
      final String userName = message.user.name.toLowerCase();
      return messageText.contains(query) || userName.contains(query);
    }).toList();

    if (filteredMessages.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(top: 25),
        child: Center(
          child: Text(
            'No messages found',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      );
    }

    return Column(
      children: filteredMessages.map((message) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 10, top: 25),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      CachedNetworkImageProvider(message.user.imageUrl),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            message.user.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              formatTimestamp(message.timestamp),
                              style: const TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        message.text,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Quicksand',
                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

String formatTimestamp(DateTime timestamp) {
  final DateTime now = DateTime.now();
  final Duration difference = now.difference(timestamp);

  if (difference.inDays < 1) {
    // Less than 24 hours, show hours and minutes
    return DateFormat('h:mm a').format(timestamp);
  } else if (difference.inDays < 7) {
    // Less than a week, show day of the week
    return DateFormat('EEEE').format(timestamp);
  } else {
    // Over 7 days, show month and year
    return DateFormat('MM/yy').format(timestamp);
  }
}

class Message {
  final User user;
  final String text;
  final DateTime timestamp; // Changed to DateTime

  Message({
    required this.user,
    required this.text,
    required this.timestamp, // Changed to DateTime
  });
}
