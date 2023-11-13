// chats_page.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/models.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
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
                    onPressed: () {},
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
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'P E O P L E',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: RecentUsers(
                users: [
                  User(
                    id: '1',
                    name: 'John Smith',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                  User(
                    id: '1',
                    name: 'Steve Johnson',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                  User(
                    id: '1',
                    name: 'John',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                  User(
                    id: '1',
                    name: 'John',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                  User(
                    id: '1',
                    name: 'John',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                  User(
                    id: '1',
                    name: 'John',
                    imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: theme.colorScheme.secondary,
                ),
                child: RecentMessages(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentMessages extends StatelessWidget {
  final List<Message> messages;

  const RecentMessages({
    Key? key,
    required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
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
      },
    );
  }
}

class RecentUsers extends StatelessWidget {
  final List<User> users;

  const RecentUsers({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        CachedNetworkImageProvider(users[index].imageUrl),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    users[index].name.split(' ')[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
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
