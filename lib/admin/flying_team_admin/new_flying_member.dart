import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class FlyingTeamNew extends StatefulWidget {
  const FlyingTeamNew({super.key});

  @override
  State<FlyingTeamNew> createState() => _FlyingTeamNewState();
}

class _FlyingTeamNewState extends State<FlyingTeamNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'New Flying Member',
      ),
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
                        label: "Full Name",
                        hintText: "John Doe",
                      ),
                      makeInput30(
                        label: "Department",
                        hintText: "Facility Manager",
                      ),
                      makeInput30(
                        label: "Role",
                        hintText: "Facility Manager",
                      ),
                      makeInput30(
                        label: "Manager",
                        hintText: "Jennifer Harris",
                      ),

                      //
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BacknCancelBtn(btnText: 'Cancel'),
                          NextBtn(btnText: "Add")
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
