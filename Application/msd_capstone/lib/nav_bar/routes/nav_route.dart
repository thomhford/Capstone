// navbar.dart

import 'package:flutter/material.dart';
import 'package:msd_capstone/camera/view/camera_page.dart';
import 'package:msd_capstone/chat/chats_page.dart';
import 'package:msd_capstone/home/home_page.dart';
import 'package:msd_capstone/profile/profile.dart';
import 'package:msd_capstone/search/search_page.dart';

class NavRoute extends StatelessWidget {
  const NavRoute({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return const CameraPage();
      case 3:
        return const ChatsPage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
