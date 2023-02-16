import 'package:flutter/material.dart';

import 'package:lize/common/colors.dart';
import 'package:lize/user/amenities/drinks/drinks.dart';
import 'package:lize/user/plane/private_jet/private_jet.dart';

import 'package:lize/user/trips/current_trip/current_trip.dart';

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
      home: AmenitiesUser(),
    );
  }
}
