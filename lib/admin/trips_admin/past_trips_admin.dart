import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/filter.dart';

class PastTripAdmin extends StatefulWidget {
  const PastTripAdmin({super.key});

  @override
  State<PastTripAdmin> createState() => _PastTripAdminState();
}

class _PastTripAdminState extends State<PastTripAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Divider(),

                  FilterHead(title: 'Past Trips'),
                  //
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  PaidVarTitle(
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
                  PaidVarTitle(
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
                  PaidVarTitle(
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
                  PaidVarTitle(
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
            ],
          ),
        ],
      ),
    );
  }
}
