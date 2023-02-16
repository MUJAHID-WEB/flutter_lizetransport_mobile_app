import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/custom_button.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../confirm_order/confirm_order.dart';

class AddAmenities extends StatefulWidget {
  const AddAmenities({super.key});

  @override
  State<AddAmenities> createState() => _AddAmenitiesState();
}

class _AddAmenitiesState extends State<AddAmenities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Amenities',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              color: cardColor,
              //height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    color: cardColor,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 253, 0),
                          child: Text(
                            'Amenities',
                            style: CustomTextStyle.tp16semi,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(),
                        ),

                        //
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              //
                              TextButton(
                                clipBehavior: Clip.none,
                                onPressed: () {
                                  //
                                },
                                child: Text(
                                  'Reservations',
                                  style: CustomTextStyle.sc14semi,
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => ReservationTrips()),
                                  // );
                                },
                                child: Text(
                                  'Current Trips',
                                  style: CustomTextStyle.ts14reg,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
                        child: Text(
                          '*Select the reservations or trips to add this amenities.',
                          style: CustomTextStyle.ts12med,
                        ),
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
                              heading: 'Trip',
                              data: 'L9021',
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
                              heading: 'Trip',
                              data: 'L9021',
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
                          ],
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SaveButton335(
                          btnText: 'Add',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConfirmOrder()),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
