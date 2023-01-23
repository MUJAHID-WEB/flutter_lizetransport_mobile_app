import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class CtCrewAdmin extends StatefulWidget {
  const CtCrewAdmin({super.key});

  @override
  State<CtCrewAdmin> createState() => _CtCrewAdminState();
}

class _CtCrewAdminState extends State<CtCrewAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trips'),
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                //Inprogress
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    InprogressTitle(id: 'L9021', btntext: 'Inprogress'),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Date Departed',
                            data: '02/31/2022',
                          ),
                          TableC(
                            heading: 'Pilot',
                            data: 'Jerome Baga',
                          ),
                          TableW(
                            heading: 'Plane',
                            data: 'A319',
                          ),
                          TableC(
                            heading: 'Key Passenger',
                            data: 'Moses Barry',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //New Passenger

                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    NpassangerTitle(
                      id: 'Crew',
                      btntext: 'New Crew',
                    ),
                  ],
                ),
                //Onboard
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StatusOnTitle(
                      id: 'Status',
                      btntext: 'Onboard',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'Middle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Onboard
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StatusOnTitle(
                      id: 'Status',
                      btntext: 'Onboard',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'Middle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Cancelled
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StatusCancelTitle(
                      id: 'Status',
                      btntext: 'Cancelled',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'Middle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Onboard
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    StatusOnTitle(
                      id: 'Status',
                      btntext: 'Onboard',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'Middle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
