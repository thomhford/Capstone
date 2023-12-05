// search_widget.dart

import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {super.key,
      required this.searchFocusNode,
      required this.searchController,
      required this.updateSearchQuery,
      required this.clearSearch,
      required this.theme});
  final FocusNode searchFocusNode;
  final TextEditingController searchController;
  final updateSearchQuery;
  final clearSearch;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: theme.colorScheme.secondaryContainer,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                focusNode: searchFocusNode,
                onChanged: updateSearchQuery,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontFamily: 'Quicksand',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 17,
                    fontFamily: 'Quicksand',
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: theme.colorScheme.primary,
                    size: 25,
                  ),
                ),
              ),
            ),
            // Only show the cancel button if the TextField is focused
            if (searchFocusNode.hasFocus)
              IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: theme.colorScheme.primary,
                ),
                onPressed: clearSearch,
              ),
          ],
        ),
      ),
    );
  }
}
