import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class AmenitiesReservation extends StatefulWidget {
  const AmenitiesReservation({super.key});

  @override
  State<AmenitiesReservation> createState() => _AmenitiesReservationState();
}

class _AmenitiesReservationState extends State<AmenitiesReservation> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  padding: EdgeInsets.symmetric(vertical: 10),
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
            //Paid
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
                      TableW(
                        heading: 'Cost',
                        data: '25,000.00',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
