import 'package:flutter/material.dart';

import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

import 'admin/dashboard_admin/dashboard_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //
  //double width = MediaQuery.of(context).size.width;
  //double height = MediaQuery.of(context).size.height;
  //
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lize Transport',
      theme: ThemeData(
        fontFamily: 'Poppins', scaffoldBackgroundColor: bgColor,
        //scaffoldBackgroundColor: Colors.white,
        // Here we set DM Sans as our default fonts
        // Now we also apply out text color to all flutter textTheme
        // textTheme:
        //     GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        // Almost all of our app bar have this style
        appBarTheme: AppBarTheme(
          color: cardColor,
          elevation: 5,
          foregroundColor: textPrimary,
          scrolledUnderElevation: 5,
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
      home: const DashboardAdmin(),
    );
  }
}
