// // chat_service.dart

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:msd_capstone/chat/models/message.dart';

// class ChatService extends ChangeNotifier {
//   final FirebaseAuth auth;

//   ChatService({
//     required this.auth,
//   });

//   // SEND MESSAGE
//   Future<void> sendMessage({
//     required String message,
//     required String recipientId,
//   }) async {
//     // get the current user
//     final String currentUserId = auth.currentUser!.uid;
//     final String currentUserEmail = auth.currentUser!.email!;
//     final DateTime timestamp = DateTime.now();

//     // create a new message
//     Message newMessage = Message(
//       senderId: currentUserId,
//       senderEmail: currentUserEmail,
//       recipientId: recipientId,
//       message: message,
//       timestamp: timestamp,
//     );

//     // constuct chat room id from current user id and recipient id (sorted to ensure uniqueness)
//     List<String> roomIds = [currentUserId, recipientId];
//     roomIds
//         .sort(); // sort the ids (ensures the same chat room id for both users)
//     String chatRoomId = roomIds.join('_'); // join the ids with an underscore

//     // TODO: add new message to backend
//   }

//   // GET MESSAGES
//   Stream<QuerySnapshot> getMessages(String userId, String otherUserId) {
//     // constuct chat room id from current user id and recipient id (sorted to ensure uniqueness)
//     List<String> roomIds = [userId, otherUserId];
//     roomIds
//         .sort(); // sort the ids (ensures the same chat room id for both users)
//     String chatRoomId = roomIds.join('_'); // join the ids with an underscore

//     // TODO: get messages from backend
//   }
// }
