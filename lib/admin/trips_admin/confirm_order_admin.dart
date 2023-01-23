import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class ConfOrderAdmin extends StatefulWidget {
  const ConfOrderAdmin({super.key});

  @override
  State<ConfOrderAdmin> createState() => _ConfOrderAdminState();
}

class _ConfOrderAdminState extends State<ConfOrderAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm the Order'),
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              //RCVD
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //Amenities
                  //
                  //Table
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TableW(
                          heading: 'Reservation',
                          data: 'R2902',
                        ),
                        TableC(
                          heading: 'Aircraft',
                          data: 'A319',
                        ),
                        TableW(
                          heading: 'Start Date',
                          data: '23/08/2022',
                        ),
                        TableC(
                          heading: 'End Date',
                          data: '30/08/2022',
                        ),

                        //
                        SizedBox(
                          height: 95,
                        ),
                        AddButton335(btnText: 'Confirm')
                      ],
                    ),
                  ),
                ],
              ),
              // Assign
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),
                  //creator
                  AssignTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Assigned',
                  ),

                  //Table
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TableW(
                          heading: 'Reservation',
                          data: 'R2902',
                        ),
                        TableC(
                          heading: 'Passengers',
                          data: '06',
                        ),
                        TableW(
                          heading: 'Aircraft',
                          data: 'A319',
                        ),
                        TableC(
                          heading: 'City',
                          data: 'Abidjan',
                        ),
                        TableWDblue(
                          heading: 'Cost',
                          data: '25,000.00',
                        ),
                        //
                        AddButton335(
                          btnText: 'Add to Reservation',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
