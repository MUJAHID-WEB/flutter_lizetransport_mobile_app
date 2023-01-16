import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class CancelTrips extends StatefulWidget {
  const CancelTrips({super.key});

  @override
  State<CancelTrips> createState() => _CancelTripsState();
}

class _CancelTripsState extends State<CancelTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Trips'),
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height / 2.5,
          width: double.infinity,
          child: Column(
            children: [
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(),
              ),
              //creator
              CancelledTitle(
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
    );
  }
}
