// recent_messages.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/models.dart';
import '../conversation_page.dart';

class RecentMessages extends StatelessWidget {
  final List<Conversation> conversations;
  final String searchQuery;

  const RecentMessages({
    super.key,
    required this.conversations,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    final List<Conversation> filteredConversations = conversations.where((conversation) {
      final String query = searchQuery.toLowerCase();
      return conversation.messages.any((message) {
        final String messageText = message.message.toLowerCase();
        final String userName = conversation.users[message.senderId]!.name.toLowerCase();
        return messageText.contains(query) || userName.contains(query);
      });
    }).toList();

    if (filteredConversations.isEmpty) {
      return const Padding(
        padding: EdgeInsets.only(top: 25),
        child: Center(
          child: Text(
            'No conversations found',
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
      children: filteredConversations.map((conversation) {
        final ChatMessage recentMessage = conversation.messages.reduce((value, element) {
          return value.timestamp.isAfter(element.timestamp) ? value : element;
        });
        final User recipient = conversation.users[recentMessage.recipientId]!;
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 10, top: 25),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ConversationPage(
                    conversation: conversation,
                  ),
                ),
              );
            },
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  CachedNetworkImageProvider(recipient.imageUrl),
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
                            recipient.name,
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
                              formatTimestamp(recentMessage.timestamp),
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
                        recentMessage.message,
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