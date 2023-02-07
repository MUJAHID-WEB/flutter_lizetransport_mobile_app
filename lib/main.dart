import 'package:flutter/material.dart';

import 'package:lize/common/colors.dart';

import 'package:lize/user/onboarding/onboard.dart';
import 'package:lize/user/onboarding/onboard02.dart';
import 'package:lize/user/onboarding/onboard03.dart';

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
