import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/pricing.dart';
import 'package:lize/admin/reservation_admin/reservation_details_admin.dart';
import 'package:lize/common/text_style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //progress
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 60,
                  width: 40,
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2500,
                    radius: 30.0,
                    lineWidth: 10.0,
                    percent: 0.66,
                    center: Text("2/3", style: CustomTextStyle.pc12semi),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: primaryColor,
                    backgroundColor: textSecondary10,
                  ),
                ),
              ),
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Passengers',
                    style: CustomTextStyle.pc16semi,
                  ),
                  Text(
                    'Next : Pricing',
                    style: CustomTextStyle.ts14reg,
                  ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Container(
          color: cardColor,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                //RCVD
                Column(
                  children: [
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
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BacknCancelBtn(
                                btnText: 'Back',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.leftToRight,
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
            ),
          )),
    );
  }
}
