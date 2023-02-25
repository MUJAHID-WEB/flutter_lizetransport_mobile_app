import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lize/admin/flying_team_admin/ft_personal_team.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'new_flying_member.dart';

class FlyingTeamAdmin extends StatefulWidget {
  const FlyingTeamAdmin({super.key});

  @override
  State<FlyingTeamAdmin> createState() => _FlyingTeamAdminState();
}

class _FlyingTeamAdminState extends State<FlyingTeamAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Flying Team',
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AddButton335(
                    btnText: 'Add new Flying member',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: FlyingTeamNew(),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        thickness: 15,
                        color: bgColorPage,
                      ),
                    ),
                    //creator
                    AvailableTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Available',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Department',
                            data: 'Pilot',
                          ),
                          TableC(
                            heading: 'Role',
                            data: 'Senior Pilot',
                          ),
                          TableW(
                            heading: 'Manager',
                            data: 'Jennifer Harris',
                          ),
                          TableC(
                            heading: 'Start Date',
                            data: '09/19/2022',
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
                                child: FlyingTeamPersonal(),
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
                      btntext: 'Flying',
                    ),
                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Department',
                            data: 'Pilot',
                          ),
                          TableC(
                            heading: 'Role',
                            data: 'Senior Pilot',
                          ),
                          TableW(
                            heading: 'Manager',
                            data: 'Jennifer Harris',
                          ),
                          TableC(
                            heading: 'Start Date',
                            data: '09/19/2022',
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
                                  child: FlyingTeamPersonal(),
                                ),
                              );
                            }),
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
                    UnavailableTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Unavailable',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Department',
                            data: 'Pilot',
                          ),
                          TableC(
                            heading: 'Role',
                            data: 'Senior Pilot',
                          ),
                          TableW(
                            heading: 'Manager',
                            data: 'Jennifer Harris',
                          ),
                          TableC(
                            heading: 'Start Date',
                            data: '09/19/2022',
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
                                  child: FlyingTeamPersonal(),
                                ),
                              );
                            }),
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
                    SuspendedTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Suspended',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Department',
                            data: 'Pilot',
                          ),
                          TableC(
                            heading: 'Role',
                            data: 'Senior Pilot',
                          ),
                          TableW(
                            heading: 'Manager',
                            data: 'Jennifer Harris',
                          ),
                          TableC(
                            heading: 'Start Date',
                            data: '09/19/2022',
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
                                child: FlyingTeamPersonal(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(
                          btnText: "Delete",
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
