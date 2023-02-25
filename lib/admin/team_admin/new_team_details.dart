import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lize/admin/team_admin/team_admin.dart';
import 'package:lize/admin/team_admin/team_select_member.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/dropdown.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';

class TeamNewAdmin extends StatefulWidget {
  const TeamNewAdmin({super.key});

  @override
  State<TeamNewAdmin> createState() => _TeamNewAdminState();
}

class _TeamNewAdminState extends State<TeamNewAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //progress
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 60,
                  width: 40,
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2500,
                    radius: 30.0,
                    lineWidth: 10.0,
                    percent: 0.50,
                    center: Text("1/2", style: CustomTextStyle.pc12semi),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: primaryColor,
                    backgroundColor: textSecondary10,
                  ),
                ),
              ),
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team Details',
                    style: CustomTextStyle.pc16semi,
                  ),
                  Text(
                    'Next : Select Members',
                    style: CustomTextStyle.ts14reg,
                  ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
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
                        label: "Team Name",
                        hintText: "Lize transport INTL",
                      ),
                      MembersJoin(label: 'How many members can join?'),

                      //
                      SizedBox(
                        height: 170,
                      ),
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
                                  child: TeamAdmin(),
                                ),
                              );
                            },
                          ),
                          NextBtn(
                            btnText: "Next",
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 500),
                                  child: TeamSelectAdmin(),
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
