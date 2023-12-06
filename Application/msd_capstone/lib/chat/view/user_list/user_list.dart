// user_list_page.dart

part of 'user_list_page.dart';

class UserList extends StatelessWidget {
  const UserList({
    super.key,
    required this.users,
    required this.searchQuery,
    required this.theme,
    required ChatBloc chatBloc,
  }) : _chatBloc = chatBloc;

  final List<ChatUser> users;
  final String searchQuery;
  final ThemeData theme;
  final ChatBloc _chatBloc;

  @override
  Widget build(BuildContext context) {
    final List<ChatUser> filteredUserList = users.where((user) {
      final String query = searchQuery.toLowerCase();
      return user.firstName.toLowerCase().contains(query) ||
          user.lastName.toLowerCase().contains(query) ||
          user.email.toLowerCase().contains(query);
    }).toList();

    // Sort users by last updated if needed... probably unnecessary...
    // filteredUserList.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));

    if (filteredUserList.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Center(
          child: Text(
            'No users found',
            style: TextStyle(
              color: theme.colorScheme.onBackground,
              fontSize: 20,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      );
    }
    // Listen for the new conversation
    return BlocListener<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state is SocketNewConversationReceived) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ConversationPage(conversation: state.conversation),
            ),
          );
        } else if (state is SocketError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: ListView.builder(
        itemCount: filteredUserList.length,
        itemBuilder: (context, index) {
          final user = filteredUserList[index];
          return Container(
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
            child: ListTile(
              title: Text(
                '${user.firstName} ${user.lastName}',
                style: TextStyle(
                  color: theme.colorScheme.primary,
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
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 15,
                  fontFamily: 'Quicksand',
                ),
              ),
              onTap: () {
                final chatBloc = BlocProvider.of<ChatBloc>(context);
                final currentUser = chatBloc.currentUserId;
                final existingConversation =
                    _chatBloc.chatData.conversations.values.firstWhere(
                        (conversation) =>
                            (conversation.user1.id == currentUser &&
                                conversation.user2.id == user.id) ||
                            (conversation.user1.id == user.id &&
                                conversation.user2.id == currentUser),
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
                    NewConversationEvent(currentUser, user.id),
                  );
                } else {
                  // Open existing conversation
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ConversationPage(conversation: existingConversation),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
