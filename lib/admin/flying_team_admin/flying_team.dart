import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class FlyingTeamAdmin extends StatefulWidget {
  const FlyingTeamAdmin({super.key});

  @override
  State<FlyingTeamAdmin> createState() => _FlyingTeamAdminState();
}

class _FlyingTeamAdminState extends State<FlyingTeamAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flying Team'),
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
                    PaidVarTitle(
                      id: 'John Doe',
                      date: '',
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
                        EditButton160(btnText: 'Edit'),
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StartedTitle(
                      id: 'John Doe',
                      date: '',
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
                        EditButton160(btnText: 'Edit'),
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    UnpExTitle(
                      id: 'John Doe',
                      date: '',
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
                        EditButton160(btnText: 'Edit'),
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
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    RcvdTitle(
                      id: 'John Doe',
                      date: '',
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
                        EditButton160(btnText: 'Edit'),
                        DeleteButton160(btnText: "Delete")
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
