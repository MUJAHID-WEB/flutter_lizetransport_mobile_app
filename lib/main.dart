import 'package:flutter/material.dart';

import 'package:lize/common/colors.dart';
import 'package:lize/user/auth_user/sign_in/signin.dart';
import 'package:lize/user/auth_user/sign_up/signup.dart';
import 'package:lize/user/dashboard/notification/notification.dart';
import 'package:lize/user/dashboard/reservation/reservation.dart';
import 'package:lize/user/invoice/unpaid/unpaid.dart';
import 'package:lize/user/message/msg_list/msg_list.dart';

import 'package:lize/user/onboarding/onboard.dart';
import 'package:lize/user/onboarding/onboard02.dart';
import 'package:lize/user/onboarding/onboard03.dart';
import 'package:lize/user/profile/profile_main/profile_main.dart';

import 'common/bottom_nav_bar.dart';
import 'common/dropdown.dart';
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
      home: ProfileUser(),
    );
  }
}
