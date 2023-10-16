import 'package:flutter/widgets.dart';
import 'package:msd_capstone/app/app.dart';
import 'package:msd_capstone/login/login.dart';
import 'package:msd_capstone/nav_bar/nav_bar.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [NavBar.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
