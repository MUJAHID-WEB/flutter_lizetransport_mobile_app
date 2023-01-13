import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({super.key});

  @override
  State<DashboardUser> createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
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
    );
  }
}
