import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../reservation_admin/reservation_details_admin.dart';

class FtTripAdmin extends StatefulWidget {
  const FtTripAdmin({super.key});

  @override
  State<FtTripAdmin> createState() => _FtTripAdminState();
}

class _FtTripAdminState extends State<FtTripAdmin> {
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
                SizedBox(
                  height: 20,
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
                        data: '2,000,000',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
            //Paid
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
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
                        data: '2,000,000',
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
                        data: '2,000,000',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Add New Plane
            Padding(
              padding: const EdgeInsets.all(20),
              child: AddButton335(
                btnText: 'New Trip',
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
            )
          ],
        ),
      ]),
    );
  }
}
