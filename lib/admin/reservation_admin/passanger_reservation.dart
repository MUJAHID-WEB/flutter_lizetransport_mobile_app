import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/pricing.dart';
import 'package:lize/admin/reservation_admin/reservation_details_admin.dart';
import 'package:lize/common/text_style.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';
import 'new_passenger_reservation.dart';

class PassengerResAdmin extends StatefulWidget {
  const PassengerResAdmin({super.key});

  @override
  State<PassengerResAdmin> createState() => _PassengerResAdminState();
}

class _PassengerResAdminState extends State<PassengerResAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passanger'),
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
                  //creator
                  NpassangerTitle(
                    id: 'Passenger',
                    btntext: 'New Passenger',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: NewPassengerReservation(),
                        ),
                      );
                    },
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
                        // Button
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BacknCancelBtn(
                              btnText: 'Back',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 500),
                                    child: ReservationDetailsAdmin(),
                                  ),
                                );
                              },
                            ),
                            NextBtn(
                              btnText: 'Next',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 500),
                                    child: Pricing(),
                                  ),
                                );
                              },
                            )
                          ],
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
