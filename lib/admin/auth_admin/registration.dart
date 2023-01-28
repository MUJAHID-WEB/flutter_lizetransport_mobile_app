import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../common/custom_button.dart';
import '../../common/text_style.dart';

class SignUpAdmin extends StatefulWidget {
  const SignUpAdmin({super.key});

  @override
  State<SignUpAdmin> createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
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
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 8),
                child: Image.asset(
                  'assets/image/logo_white.png',
                  height: 60,
                  width: 223.48,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    makeInputbg5(
                      label: 'Full Name',
                      hintText: 'john doe',
                    ),
                    makeInputbg5(
                      label: 'Mail',
                      hintText: 'Enter your mail ID',
                    ),
                    makeInputbg5(
                      label: 'Language',
                      hintText: 'French',
                    ),
                    makeInputbg5(
                        label: 'Set Password',
                        hintText: '********',
                        obscureText: true),
                    //

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 70),
                      child: WhiteBtn330(btnText: 'Register'),
                    ),
                    //
                    Row(
                      children: <Widget>[
                        Text(
                          'Already have an account? ',
                          style: CustomTextStyle.cc6014reg,
                        ),
                        TextButton(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: cardColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {
                            //signup screen
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
