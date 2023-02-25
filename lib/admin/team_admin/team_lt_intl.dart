import 'package:flutter/material.dart';
import 'package:lize/common/dropdown.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/forms.dart';
import '../../common/text_style.dart';
import 'invite_member.dart';
import 'new_team_details.dart';

class TeamLtlAdmin extends StatefulWidget {
  const TeamLtlAdmin({super.key});

  @override
  State<TeamLtlAdmin> createState() => _TeamLtlAdminState();
}

class _TeamLtlAdminState extends State<TeamLtlAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'Lize transport INTL',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView(children: [
              Column(
                children: [
                  //title
                  Text(
                    'Profile Image',
                    style: CustomTextStyle.tp16semi,
                  ),
                  //Avatar
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/image/avatar.jpg',
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ),
                  //
                  Text(
                    'Change',
                    style: CustomTextStyle.pc14reg,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              //
              Column(
                children: [
                  //Input
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        makeInput30(
                          label: "Team Name",
                          hintText: "Lize transport INTL",
                        ),
                        MembersJoin(label: 'How many members can join?'),

                        //
                        // Add New Plane
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: AddButton335(
                            btnText: 'Invite Member',
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 500),
                                  child: TeamInviteAdmin(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EditButton160(
                            btnText: 'Edit',
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
                          DeleteButton160(btnText: "Delete")
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EditButton160(
                            btnText: 'Edit',
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
                          DeleteButton160(btnText: "Delete")
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EditButton160(
                            btnText: 'Edit',
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
                          DeleteButton160(btnText: "Delete")
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EditButton160(
                            btnText: 'Edit',
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
                          DeleteButton160(btnText: "Delete")
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          EditButton160(
                            btnText: 'Edit',
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
                          DeleteButton160(btnText: "Delete")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //
            ]),
          )),
    );
  }
}
