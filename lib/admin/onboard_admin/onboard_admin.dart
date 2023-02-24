import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../auth_admin/login.dart';

class OnboardAdmin extends StatefulWidget {
  const OnboardAdmin({super.key});

  @override
  State<OnboardAdmin> createState() => _OnboardAdminState();
}

class _OnboardAdminState extends State<OnboardAdmin> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LogInAdmin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Image.asset(
          'assets/image/logo_admin.png',
          height: 140.79,
          width: 239.34,
        ),
      ),
    );
  }
}
