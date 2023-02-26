import 'package:flutter/material.dart';
import 'package:lize/admin/plane_admin/plane_current_trips.dart';

import 'package:lize/common/colors.dart';

import 'admin/flying_team_admin/flying_team.dart';
import 'admin/message_admin/msg_list_admin.dart';
import 'admin/team_admin/team_admin.dart';
import 'admin/trips_admin/ct_details_admin.dart';
import 'admin/trips_admin/current_trips_admin.dart';
import 'common/text_style.dart';

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
        scaffoldBackgroundColor: bgColorPage, //admin
        // scaffoldBackgroundColor: bgColor, //user
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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: textSecondary,
          selectedItemColor: secondaryColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: CustomTextStyle.sc14semi,
          unselectedLabelStyle: CustomTextStyle.ts14med,
          backgroundColor: cardColor,
          elevation: 12,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: const OnboardUser(),
      //home: OnboardAdmin(), //Admin
      home: CtDetailsAdmin(),
    );
  }
}
