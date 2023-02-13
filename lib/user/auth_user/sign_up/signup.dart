import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../../common/custom_button.dart';
import '../../../common/text_style.dart';
import '../../onboarding/onboard02.dart';
import '../sign_in/signin.dart';

class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // color: secondaryColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image/signup.jpg",
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Container(
          color: blackColor50,
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 45, 0, 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                          child: IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage(
                                'assets/image/back_arrow.png',
                              ),
                              color: cardColor,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/image/logo_white.png',
                          height: 54,
                          width: 205.24,
                        ),
                      ],
                    ),
                  ),
                  //

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up',
                          style: CustomTextStyle.cc32800,
                        ),
                        //
                        Text(
                          'Create new Account.',
                          style: CustomTextStyle.cc14reg,
                        ),
                        //

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              makeInput05cc25(label: 'Prefix', hintText: 'Mr.'),
                              makeInput05cc25(
                                  label: 'First Name', hintText: 'john|'),
                              makeInput05cc25(
                                  label: 'Last Name', hintText: 'john|'),
                              makeInput05cc25(
                                  label: 'Organization',
                                  hintText: 'Type your Organization'),
                              makeInput05cc25(
                                  label: 'Language', hintText: 'French'),
                              makeInput05cc25(
                                  label: 'Telephone', hintText: '+1'),
                              makeInput05cc25(
                                  label: 'Mail',
                                  hintText: 'Enter your mail ID'),
                              makeInput05cc25(
                                  label: 'Password',
                                  hintText: '********',
                                  obscureText: true),
                            ],
                          ),
                          //
                        ),

                        //

                        CcbgBtn330(
                          btnText: 'Sign Up',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogInUser()),
                            );
                          },
                        ),
                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'By Clicking Signup you agree to our',
                                  style: CustomTextStyle.cc14reg,
                                ),
                                Text(
                                  'Terms & Service',
                                  style: TextStyle(
                                      color: cardColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Already have an account? ',
                                style: CustomTextStyle.cc6014reg,
                              ),
                              TextButton(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: cardColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInUser()),
                                  );
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //
            ],
          ),
          //
        ),
      ),
    );
  }
}
