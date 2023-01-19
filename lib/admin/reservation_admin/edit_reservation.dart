import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class EditResAdmin extends StatefulWidget {
  const EditResAdmin({super.key});

  @override
  State<EditResAdmin> createState() => _EditResAdminState();
}

class _EditResAdminState extends State<EditResAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation'),
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(children: [
          Column(
            children: [
              //RCVD
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  RcvdTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Received',
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
                        TableW(
                          heading: 'Cost',
                          data: '-',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Passenger
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
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
                          heading: 'MIddle Name',
                          data: 'Ba',
                        ),
                        TableC(
                          heading: 'Citizenship',
                          data: 'Abidjan',
                        ),
                        //
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(),
                        ),
                        //
                        TableW(
                          heading: 'First Name',
                          data: 'Mariam',
                        ),
                        TableC(
                          heading: 'Last Name',
                          data: 'Solei',
                        ),
                        TableW(
                          heading: 'MIddle Name',
                          data: 'Ba',
                        ),
                        TableC(
                          heading: 'Citizenship',
                          data: 'Abidjan',
                        ),

                        //
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(),
                        ),
                        //
                        TableW(
                          heading: 'First Name',
                          data: 'Mariam',
                        ),
                        TableC(
                          heading: 'Last Name',
                          data: 'Solei',
                        ),
                        TableW(
                          heading: 'MIddle Name',
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
              // Pricing

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
                          heading: 'Price',
                          data: '25,000.00',
                        ),
                        TableC(
                          heading: 'Discount',
                          data: '0%',
                        ),
                        TableW(
                          heading: 'Discount Value',
                          data: '0%',
                        ),
                        TableC(
                          heading: 'Discount Code',
                          data: 'LTIDI0029',
                        ),
                        TableWDblue(
                          heading: 'Final Price',
                          data: '25,000.00',
                        ),
                        //

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: EditButton(btnText: 'Edit'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
