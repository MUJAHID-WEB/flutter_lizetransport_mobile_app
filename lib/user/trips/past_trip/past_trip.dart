import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled_trip/cancelled_trip.dart';
import '../current_trip/current_trip.dart';
import '../reservation_trip/reservation_trip.dart';

class PastTrips extends StatefulWidget {
  const PastTrips({super.key});

  @override
  State<PastTrips> createState() => _PastTripsState();
}

class _PastTripsState extends State<PastTrips> {
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
              //height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              child: Column(
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReservationTrips()),
                              );
                            },
                            child: Text(
                              'Reservations',
                              style: CustomTextStyle.ts14reg,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              'Past Trips',
                              style: CustomTextStyle.sc14semi,
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
                  CompletedTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Completed',
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
              )),
        ),
      ),
    );
  }
}
