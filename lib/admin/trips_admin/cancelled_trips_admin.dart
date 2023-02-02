import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class CancelTripAdmin extends StatefulWidget {
  const CancelTripAdmin({super.key});

  @override
  State<CancelTripAdmin> createState() => _CancelTripAdminState();
}

class _CancelTripAdminState extends State<CancelTripAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Trips',
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                //Started
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    CompletedTitle(
                      id: 'Moses Dabo',
                      date: '23/08/2022 -> 30/08/2022',
                      btntext: 'Cancelled',
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
                //Started
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    CompletedTitle(
                      id: 'Moses Dabo',
                      date: '23/08/2022 -> 30/08/2022',
                      btntext: 'Cancelled',
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
                //Started
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    CompletedTitle(
                      id: 'Moses Dabo',
                      date: '23/08/2022 -> 30/08/2022',
                      btntext: 'Cancelled',
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
                //Started
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    CompletedTitle(
                      id: 'Moses Dabo',
                      date: '23/08/2022 -> 30/08/2022',
                      btntext: 'Cancelled',
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
          ],
        ),
      ),
    );
  }
}
