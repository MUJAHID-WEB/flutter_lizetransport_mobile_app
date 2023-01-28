import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class TeamNewAdmin extends StatefulWidget {
  const TeamNewAdmin({super.key});

  @override
  State<TeamNewAdmin> createState() => _TeamNewAdminState();
}

class _TeamNewAdminState extends State<TeamNewAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                      //
                      //
                      makeInput30(
                        label: "Team Name",
                        hintText: "Lize transport INTL",
                      ),

                      //
                      SizedBox(
                        height: 300,
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BacknCancelBtn(btnText: 'Cancel'),
                          NextBtn(btnText: "Next")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
