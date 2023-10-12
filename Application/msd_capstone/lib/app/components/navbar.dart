// navbar.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/camera_page.dart';
import 'animated_button.dart';
import '../pages/home_page.dart';
import '../pages/search_page.dart';
import '../pages/upload_page.dart';
import '../pages/chats_page.dart';
import '../pages/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;

  Widget _getPageAtIndex(int index) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPageAtIndex(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Theme.of(context).colorScheme.onPrimary,
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/icons/Home.svg'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/icons/Search.svg'),
            label: 'Search',
          ),
          AnimatedButton(
            iconPath: 'assets/images/icons/Upload.svg',
            label: 'Upload',
            isSelected: currentPageIndex == 2,
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/icons/Chats.svg'),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/icons/Profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
