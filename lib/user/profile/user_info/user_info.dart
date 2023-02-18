import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/appbar.dart';
import '../../../common/custom_button.dart';
import '../../../common/dropdown.dart';
import '../../../common/forms.dart';
import '../profile_main/profile_main.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUserBack(
        title: 'User Information',
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            //height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Image.asset(
                              'assets/image/avatar.jpg',
                              height: 130,
                              width: 130,
                            ),
                          ),

                          //
                          Positioned(
                            bottom: -0,
                            left: 65,
                            child: Container(
                              height: 50,
                              width: 50,
                              //color: cardColor,
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  border:
                                      Border.all(width: 3, color: cardColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const UserInfo()),
                                  );
                                },
                                icon: ImageIcon(
                                  AssetImage(
                                    'assets/image/camera.png',
                                  ),
                                  color: cardColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      //
                      PrUserInfo(
                        label: 'Mr.',
                      ),
                      makeInput(
                        label: "First Name",
                        hintText: "John",
                      ),
                      makeInput(
                        label: "Last Name",
                        hintText: "Doe",
                      ),
                      makeInput(
                        label: "Organization",
                        hintText: "Type your Organization",
                      ),
                      LanUserInfo(
                        label: 'French',
                      ),
                      makeInput(
                        label: "Telephone",
                        hintText: "+1",
                      ),
                      makeInput(
                        label: "Mail",
                        hintText: "lti@outlook.com",
                      ),
                      makeInput(
                        label: "Set new Password",
                        hintText: "",
                        obscureText: true,
                      ),
                      //
                      SaveButton335(
                        btnText: 'Save',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileUser()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
