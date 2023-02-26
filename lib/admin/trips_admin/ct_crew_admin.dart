import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import 'crew_admin.dart';

class CtCrewAdmin extends StatefulWidget {
  const CtCrewAdmin({super.key});

  @override
  State<CtCrewAdmin> createState() => _CtCrewAdminState();
}

class _CtCrewAdminState extends State<CtCrewAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: [
          Column(
            children: [
              //New Passenger

              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),
                  //creator
                  NpassangerTitle(
                    id: 'Crew',
                    btntext: 'New Crew',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: CrewTrips(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              //Onboard
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
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
                    padding: EdgeInsets.symmetric(vertical: 10),
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
                    padding: EdgeInsets.symmetric(vertical: 10),
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
                    padding: EdgeInsets.symmetric(vertical: 10),
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
    );
  }
}
