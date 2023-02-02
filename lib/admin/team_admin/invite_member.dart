import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class TeamInviteAdmin extends StatefulWidget {
  const TeamInviteAdmin({super.key});

  @override
  State<TeamInviteAdmin> createState() => _TeamInviteAdminState();
}

class _TeamInviteAdminState extends State<TeamInviteAdmin> {
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
                //

                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                BacknCancelBtn(btnText: 'Back'),
                NextBtn(btnText: "Send Invite")
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
