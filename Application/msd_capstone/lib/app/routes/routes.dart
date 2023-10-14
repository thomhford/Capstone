import 'package:flutter/widgets.dart';
import 'package:msd_capstone/app/app.dart';
import 'package:msd_capstone/home/home.dart';
import 'package:msd_capstone/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
