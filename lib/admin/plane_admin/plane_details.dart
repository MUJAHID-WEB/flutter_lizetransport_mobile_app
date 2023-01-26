import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class PlaneDetailsAdmin extends StatefulWidget {
  const PlaneDetailsAdmin({super.key});

  @override
  State<PlaneDetailsAdmin> createState() => _PlaneDetailsAdminState();
}

class _PlaneDetailsAdminState extends State<PlaneDetailsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planes'),
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
                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'LTI Name',
                            data: 'Airbus A319 LTI-LBZ',
                          ),
                          TableC(
                            heading: 'Manufacturer',
                            data: 'Airbus',
                          ),
                          TableW(
                            heading: 'Model',
                            data: 'A319',
                          ),
                          TableC(
                            heading: 'LTI Plane Number',
                            data: 'LTI-J3209911',
                          ),
                          TableW(
                            heading: 'Wingspan',
                            data: '26,2128M',
                          ),
                          TableC(
                            heading: 'Height',
                            data: '7,9248M',
                          ),
                          TableW(
                            heading: 'Length',
                            data: '14.224M',
                          ),
                          TableC(
                            heading: 'Fuel capacity',
                            data: '3611 Lbs',
                          ),
                          TableW(
                            heading: 'Max takeoff weight',
                            data: '6804Kgs',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Add New Plane
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: EditButton330(
                    btnText: 'Edit',
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
