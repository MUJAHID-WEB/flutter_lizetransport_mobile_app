import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

class LogInAdmin extends StatefulWidget {
  const LogInAdmin({super.key});

  @override
  State<LogInAdmin> createState() => _LogInAdminState();
}

class _LogInAdminState extends State<LogInAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          color: secondaryColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'assets/image/logo_white.png',
                height: 60,
                width: 223.48,
              ),
            ],
          )),
    );
  }
}
