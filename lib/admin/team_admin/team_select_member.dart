import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lize/admin/team_admin/team_admin.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';
import '../../common/forms.dart';
import '../../common/text_style.dart';
import 'new_team_details.dart';

class TeamSelectAdmin extends StatefulWidget {
  const TeamSelectAdmin({super.key});

  @override
  State<TeamSelectAdmin> createState() => _TeamSelectAdminState();
}

class _TeamSelectAdminState extends State<TeamSelectAdmin> {
  // TextEditingController controller = TextEditingController(text: "");
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
                    percent: 1.0,
                    center: Text("2/2", style: CustomTextStyle.pc12semi),
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
                    'Select Members',
                    style: CustomTextStyle.pc16semi,
                  ),
                  // Text(
                  //   'Next : Select Members',
                  //   style: CustomTextStyle.ts14reg,
                  // ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Contact',
                        style: CustomTextStyle.tp14semi,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CupertinoSearchTextField(
                        // controller: controller,
                        //onChanged: (value) {},
                        //onSubmitted: (value) {},
                        //autocorrect: true,
                        placeholder: 'Search',
                        placeholderStyle: CustomTextStyle.ts12med,
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 20, 10),
                        prefixInsets:
                            EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),

                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: borderColor,
                              width: 1.0,
                            )),
                        //
                      ),
                    ],
                  ),
                ),
                //
                Column(
                  children: [
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),
                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),
                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                  ],
                ),
                //
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BacknCancelBtn(
                  btnText: 'Back',
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 500),
                        child: TeamNewAdmin(),
                      ),
                    );
                  },
                ),
                NextBtn(
                  btnText: "Send Invite",
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
                )
              ],
            ),
            //
            SizedBox(
              height: 34,
            )
          ])),
    );
  }
}
