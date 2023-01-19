import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class CtDetailsAdmin extends StatefulWidget {
  const CtDetailsAdmin({super.key});

  @override
  State<CtDetailsAdmin> createState() => _CtDetailsAdminState();
}

class _CtDetailsAdminState extends State<CtDetailsAdmin> {
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
                //Started
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
                //Started
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    WithoutBtnTitle(
                      id: 'Moses Dabo',
                      date: '23/08/2022 | 9:00 AM -> 23/08/2022 | 9:00 AM',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Trip',
                            data: 'L9021',
                          ),
                          TableC(
                            heading: 'Passengers',
                            data: '06',
                          ),
                          TableW(
                            heading: 'Plane',
                            data: 'Falcon 8x',
                          ),
                          TableC(
                            heading: 'City',
                            data: 'Ouagadougou',
                          ),
                          TableW(
                            heading: 'Cost',
                            data: '-',
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
