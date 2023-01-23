import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class CtAmenitiesAdmin extends StatefulWidget {
  const CtAmenitiesAdmin({super.key});

  @override
  State<CtAmenitiesAdmin> createState() => _CtAmenitiesAdminState();
}

class _CtAmenitiesAdminState extends State<CtAmenitiesAdmin> {
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
