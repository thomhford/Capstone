// navbar.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../camera/camera.dart';
import '../../chat/chat.dart';
import '../../home/home.dart';
import '../../profile/profile.dart';
import '../../search/search.dart';
import '../bloc/navigation_bloc.dart';
import 'upload_nav_button.dart';

class NavBar extends StatelessWidget {
  final NavigationBloc? navigationBloc;
  const NavBar({super.key, this.navigationBloc});

  static Page<void> page() => const MaterialPage<void>(child: NavBar());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<NavigationBloc, int>(builder: (context, state) {
      return Scaffold(
        body: IndexedStack(
          index: state,
          children: const [
            HomePage(),
            SearchPage(),
            CameraPage(),
            ChatsPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: state,
          onDestinationSelected: (int index) {
            context.read<NavigationBloc>().add(index);
          },
          backgroundColor: theme.colorScheme.background,
          indicatorColor: theme.colorScheme.primaryContainer,
          destinations: destinations(state),
        ),
      );
    });
  }

  List<Widget> destinations(int state) => <Widget>[
        const NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        const NavigationDestination(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        UploadNavButton(
          iconPath: 'assets/images/icons/Upload.svg',
          label: 'Upload',
          isSelected: state == 2,
        ),
        const NavigationDestination(
          icon: Icon(Icons.chat_bubble_outline_rounded),
          label: 'Chats',
        ),
        const NavigationDestination(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
        ),
      ];
}
