import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lize/admin/team_admin/team_lt_intl.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';

class TeamInviteAdmin extends StatefulWidget {
  const TeamInviteAdmin({super.key});

  @override
  State<TeamInviteAdmin> createState() => _TeamInviteAdminState();
}

class _TeamInviteAdminState extends State<TeamInviteAdmin> {
  // TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Invite Member',
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
                        child: TeamLtlAdmin(),
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
                        child: TeamLtlAdmin(),
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
