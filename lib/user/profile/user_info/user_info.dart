import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                    child: Column(
                      children: [
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
