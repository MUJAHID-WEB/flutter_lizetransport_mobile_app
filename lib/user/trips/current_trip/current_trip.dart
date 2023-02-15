import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled_trip/cancelled_trip.dart';
import '../past_trip/past_trip.dart';
import '../reservation_trip/reservation_trip.dart';

class CurrentTrips extends StatefulWidget {
  const CurrentTrips({super.key});

  @override
  State<CurrentTrips> createState() => _CurrentTripsState();
}

class _CurrentTripsState extends State<CurrentTrips> {
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
                              //
                            },
                            child: Text(
                              'Current Trips',
                              style: CustomTextStyle.sc14semi,
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
                  StartedTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Started',
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
