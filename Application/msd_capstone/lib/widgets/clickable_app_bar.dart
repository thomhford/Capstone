// widgets/clickable_app_bar.dart

import 'package:flutter/material.dart';

class ClickableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onTap;
  final List<Widget>? actions;

  const ClickableAppBar({
    super.key,
    required this.title,
    required this.onTap,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.background,
        title: Text(
          title,
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        centerTitle: false,
        actions: actions,
      ),
    );
  }
}