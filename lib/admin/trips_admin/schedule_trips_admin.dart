import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/filter.dart';

class ScheduleTripAdmin extends StatefulWidget {
  const ScheduleTripAdmin({super.key});

  @override
  State<ScheduleTripAdmin> createState() => _ScheduleTripAdminState();
}

class _ScheduleTripAdminState extends State<ScheduleTripAdmin> {
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

                  FilterHead(title: 'Schedule Trips'),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  RcvdTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Scheduled',
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
              //Started
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  RcvdTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Scheduled',
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
              //Started
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  RcvdTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Scheduled',
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
              //Started
              Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(),
                  ),
                  //creator
                  RcvdTitle(
                    id: 'Moses Dabo',
                    date: '23/08/2022 -> 30/08/2022',
                    btntext: 'Scheduled',
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
