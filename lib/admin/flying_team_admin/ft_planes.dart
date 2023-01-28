import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class FtPlanesAdmin extends StatefulWidget {
  const FtPlanesAdmin({super.key});

  @override
  State<FtPlanesAdmin> createState() => _FtPlanesAdminState();
}

class _FtPlanesAdminState extends State<FtPlanesAdmin> {
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
                //Unpaid
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),

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
                            heading: 'LTI Plane Number',
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

                //
                // Add New Plane
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: AddButton335(
                    btnText: 'Add new Plane',
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
