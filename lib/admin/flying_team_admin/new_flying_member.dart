import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'flying_team.dart';

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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      DottedBorder(
                        dashPattern: [8, 4],
                        strokeWidth: 2,
                        color: borderColor,
                        child: SizedBox(
                          height: 112,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/image/upload.png'),
                                color: primaryColor,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Upload Plane Image',
                                style: CustomTextStyle.pc14med,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                          BacknCancelBtn(
                            btnText: 'Cancel',
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 500),
                                  child: FlyingTeamAdmin(),
                                ),
                              );
                            },
                          ),
                          NextBtn(
                            btnText: "Add",
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 500),
                                  child: FlyingTeamAdmin(),
                                ),
                              );
                            },
                          )
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
