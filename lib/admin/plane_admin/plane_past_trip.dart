import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class PlanePastTripAdmin extends StatefulWidget {
  const PlanePastTripAdmin({super.key});

  @override
  State<PlanePastTripAdmin> createState() => _PlanePastTripAdminState();
}

class _PlanePastTripAdminState extends State<PlanePastTripAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Airbus A319 LTI-LBZ',
      ),
      body: Container(
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
                //Paid
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
                            data: '25,000',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
