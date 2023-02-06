import 'package:flutter/material.dart';

import 'package:lize/common/colors.dart';
import 'package:lize/user/dashboard/dboard/dboard.dart';
import 'package:lize/user/dashboard/menu/menu.dart';
import 'package:lize/user/onboarding/onboard.dart';

import 'admin/dashboard_admin/dashboard_admin.dart';
import 'admin/dashboard_admin/menu_admin.dart';
import 'common/bottom_nav_bar.dart';
import 'common/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lize Transport',
      theme: ThemeData(
        fontFamily: 'Poppins',
        //scaffoldBackgroundColor: bgColorPage,  //admin
        scaffoldBackgroundColor: bgColor, //user
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(color: textPrimary, size: 24),
          iconTheme: IconThemeData(color: textPrimary, size: 24),
          color: cardColor,
          elevation: 5,
          foregroundColor: textPrimary,
          scrolledUnderElevation: 10,
          shadowColor: textPrimary20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 61,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OnboardUser(),
    );
  }
}
