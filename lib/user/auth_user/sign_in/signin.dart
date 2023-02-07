import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../../common/custom_button.dart';
import '../../../common/text_style.dart';

class LogInUser extends StatefulWidget {
  const LogInUser({super.key});

  @override
  State<LogInUser> createState() => _LogInUserState();
}

class _LogInUserState extends State<LogInUser> {
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
                      child: WhiteBtn330(btnText: 'Log In'),
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
