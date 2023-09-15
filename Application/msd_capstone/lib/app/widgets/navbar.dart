// navbar.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'animated_button.dart';
import '../screens/home_page.dart';
import '../screens/search_page.dart';
import '../screens/upload_page.dart';
import '../screens/chats_page.dart';
import '../screens/profile_page.dart';

class NavBar extends StatefulWidget {
  final void Function() logout;

  const NavBar({Key? key, required this.logout}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
        return const UploadPage();
      case 3:
        return const ChatsPage();
      case 4:
        return ProfilePage(logout: widget.logout);
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
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/Home.svg'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/Search.svg'),
            label: 'Search',
          ),
          AnimatedButton(
            iconPath: 'assets/images/Upload.svg',
            label: 'Upload',
            isSelected: currentPageIndex == 2,
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/Chats.svg'),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/images/Profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
