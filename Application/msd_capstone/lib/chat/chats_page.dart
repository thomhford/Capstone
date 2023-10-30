// chats_page.dart

import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B202D),
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
                'R E C E N T',
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
                      name: 'John Smith',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                  User(
                      name: 'Steve Johnson',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                  User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                  User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                  User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                  User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xFF292F3F),
              ),
              child: RecentMessages(
                messages: [
                  Message(
                    user: User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going?',
                    timestamp: '2:30 PM',
                  ),
                  Message(
                    user: User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going?',
                    timestamp: '2:30 PM',
                  ),
                  Message(
                    user: User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going?',
                    timestamp: '2:30 PM',
                  ),
                  Message(
                    user: User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going?',
                    timestamp: '2:30 PM',
                  ),
                  Message(
                    user: User(
                      name: 'John Smith',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going?',
                    timestamp: '2:30 PM',
                  ),
                  Message(
                    user: User(
                      name: 'John',
                      imageUrl: 'https://i.imgur.com/TzEia5G.jpeg',
                    ),
                    text: 'Hey, how\'s it going hhhhhhhhhhhhhh?',
                    timestamp: '2:30 PM',
                  ),
                ],
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
                  backgroundImage: NetworkImage(message.user.imageUrl),
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
                              message.timestamp,
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
                    backgroundImage: NetworkImage(users[index].imageUrl),
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

class User {
  final String name;
  final String imageUrl;

  User({
    required this.name,
    required this.imageUrl,
  });
}

class Message {
  final User user;
  final String text;
  final String timestamp;

  Message({
    required this.user,
    required this.text,
    required this.timestamp,
  });
}
