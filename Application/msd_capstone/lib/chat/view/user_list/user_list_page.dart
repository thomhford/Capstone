import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/chat/bloc/chat_bloc.dart';
import 'package:msd_capstone/widgets/widgets.dart';

import '../../models/chat_user.dart';
import '../../models/conversation.dart';
import '../conversation_page.dart';

part 'user_list.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late ChatBloc _chatBloc;
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
  final ScrollController scrollController = ScrollController();

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
      backgroundColor: theme.colorScheme.background,
      appBar: ClickableAppBar(
        title: 'User List',
        onTap: () {
          scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchWidget(
              searchFocusNode: searchFocusNode,
              searchController: searchController,
              updateSearchQuery: updateSearchQuery,
              clearSearch: clearSearch,
              theme: theme,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Scrollbar(
                controller: scrollController,
                child: BlocListener<ChatBloc, ChatState>(
                  listener: (context, state) {
                    if (state is UsersUpdated) {
                      setState(() {});
                    }
                  },
                  child: () {
                    final users = _chatBloc.chatData.users.values.toList();
                    if (users.isEmpty) {
                      return Center(
                        child: Text(
                          "No users found",
                          style: TextStyle(
                            color: theme.colorScheme.onBackground,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      );
                    }
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
                      child: UserList(
                        users: users,
                        searchQuery: _searchQuery,
                        theme: theme,
                        chatBloc: _chatBloc,
                      ),
                    );
                  }(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
