import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled_trip/cancelled_trip.dart';
import '../current_trip/current_trip.dart';
import '../past_trip/past_trip.dart';

class ReservationTrips extends StatefulWidget {
  const ReservationTrips({super.key});

  @override
  State<ReservationTrips> createState() => _ReservationTripsState();
}

class _ReservationTripsState extends State<ReservationTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'My Trips',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              color: cardColor,
              width: double.infinity,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 253, 0),
                        child: Text(
                          'My Trips',
                          style: CustomTextStyle.tp16semi,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Divider(),
                      ),
                      //
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              //
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CurrentTrips()),
                                  );
                                },
                                child: Text(
                                  'Current Trips',
                                  style: CustomTextStyle.ts14reg,
                                ),
                              ),
                              TextButton(
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PastTrips()),
                                  );
                                },
                                child: Text(
                                  'Past Trips',
                                  style: CustomTextStyle.ts14reg,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CancelTrips()),
                                  );
                                },
                                child: Text(
                                  'cancelled Trips',
                                  style: CustomTextStyle.ts14reg,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

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
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
