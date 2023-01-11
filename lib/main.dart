import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import 'user/dashboard/dboard/dboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //double width = MediaQuery.of(context).size.width;
  //double height = MediaQuery.of(context).size.height;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lize Transport',
      theme: ThemeData(fontFamily: 'Poppins', scaffoldBackgroundColor: bgColor),
      home: const DashboardUser(),
    );
  }
}
