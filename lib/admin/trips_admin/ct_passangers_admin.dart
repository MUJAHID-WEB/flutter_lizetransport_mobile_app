import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class CtPassengerAdmin extends StatefulWidget {
  const CtPassengerAdmin({super.key});

  @override
  State<CtPassengerAdmin> createState() => _CtPassengerAdminState();
}

class _CtPassengerAdminState extends State<CtPassengerAdmin> {
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
                    id: 'Passengers',
                    btntext: 'New Passenger',
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
    );
  }
}
