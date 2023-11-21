// recent_messages.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/models.dart';

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
      final String messageText = message.message.toLowerCase();
      final String userName = message.recipientId.name.toLowerCase();
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
                  CachedNetworkImageProvider(message.recipientId.imageUrl),
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
                            message.recipientId.name,
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
                        message.message,
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