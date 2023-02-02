import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class FtEmployeeAdmin extends StatefulWidget {
  const FtEmployeeAdmin({super.key});

  @override
  State<FtEmployeeAdmin> createState() => _FtEmployeeAdminState();
}

class _FtEmployeeAdminState extends State<FtEmployeeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'John Ngolo Doe',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //Unpaid
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    PaidVarTitle(
                      id: 'John Ngolo Doe',
                      date: '',
                      btntext: 'Level 4',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Manager',
                            data: 'Marie Taylor',
                          ),
                          TableC(
                            heading: 'Supervisor',
                            data: 'Jimmie Dang',
                          ),
                          TableW(
                            heading: 'Department',
                            data: 'Pilot',
                          ),
                          TableC(
                            heading: 'Role',
                            data: 'Pilot',
                          ),
                          TableW(
                            heading: 'Total Hours',
                            data: '23099 Km',
                          ),
                          TableC(
                            heading: 'Start Date',
                            data: '03/12/2020',
                          ),
                          TableW(
                            heading: 'Last Date',
                            data: '-',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
