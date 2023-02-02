import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/forms.dart';

class TeamLtlAdmin extends StatefulWidget {
  const TeamLtlAdmin({super.key});

  @override
  State<TeamLtlAdmin> createState() => _TeamLtlAdminState();
}

class _TeamLtlAdminState extends State<TeamLtlAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Lize transport INTL',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                Column(
                  children: [
                    //
                    //
                    makeInput30(
                      label: "Team Name",
                      hintText: "Lize transport INTL",
                    ),

                    //
                    // Add New Plane
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: AddButton335(
                        btnText: 'Invite Member',
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
                        EditButton160(btnText: 'Edit'),
                        DeleteButton160(btnText: "Delete")
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //
          ])),
    );
  }
}
