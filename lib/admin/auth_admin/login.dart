import 'package:flutter/material.dart';
import 'package:lize/admin/auth_admin/registration.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';
import 'package:page_transition/page_transition.dart';

import '../../common/bottom_nav_bar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import '../dashboard_admin/dashboard_admin.dart';

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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  'assets/image/logo_white.png',
                  height: 60,
                  width: 223.48,
                ),
              ),
              //
              Text(
                'Welcome Back!',
                style: CustomTextStyle.cc26reg,
              ),
              //
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    makeInputbg5(label: 'Email', hintText: 'johndoe@gmail.com'),
                    makeInputbg5(
                        label: 'Password',
                        hintText: '********',
                        obscureText: true),
                    //

                    Text(
                      'Forgot your Password?',
                      style: CustomTextStyle.cc14med,
                    ),
                    //

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 140),
                      child: WhiteBtn330(
                        btnText: 'Log In',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: DashboardAdmin(),
                              //child: HomePage(),
                            ),
                          );
                        },
                      ),
                    ),
                    //
                    Row(
                      children: <Widget>[
                        Text(
                          'Don’t have an account?',
                          style: CustomTextStyle.cc6014reg,
                        ),
                        TextButton(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: cardColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: SignUpAdmin(),
                              ),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
