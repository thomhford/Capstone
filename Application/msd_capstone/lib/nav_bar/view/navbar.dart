// navbar.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msd_capstone/nav_bar/routes/nav_route.dart';
import '../../camera/camera.dart';
import '../../chat/chat.dart';
import '../../home/home.dart';
import '../../profile/profile.dart';
import '../../search/search.dart';
import '../bloc/navigation_bloc.dart';
import 'upload_nav_button.dart';

class NavBar extends StatelessWidget {
  final NavigationBloc? navigationBloc;
  const NavBar({Key? key, this.navigationBloc}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: NavBar());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, int>(builder: (context, state) {
      return Scaffold(
        // Need to figure out how to use a IndexedStack to keep the state of the pages
        body: NavRoute(index: state),
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: state,
          onDestinationSelected: (int index) {
            context.read<NavigationBloc>().add(index);
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          indicatorColor: Theme.of(context).colorScheme.onPrimary,
          destinations: destinations(state),
        ),
      );
    });
  }

  List<Widget> destinations(int state) => <Widget>[
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/icons/Home.svg'),
          label: 'Home',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/icons/Search.svg'),
          label: 'Search',
        ),
        UploadNavButton(
          iconPath: 'assets/images/icons/Upload.svg',
          label: 'Upload',
          isSelected: state == 2,
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/icons/Chats.svg'),
          label: 'Chats',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('assets/images/icons/Profile.svg'),
          label: 'Profile',
        ),
      ];
}
