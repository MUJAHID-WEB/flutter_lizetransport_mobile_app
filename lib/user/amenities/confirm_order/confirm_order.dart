import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planes'),
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
                      heading: 'Aircraft',
                      data: 'A319',
                    ),
                    TableW(
                      heading: 'Start Date',
                      data: '23/08/2022',
                    ),
                    TableC(
                      heading: 'End Date',
                      data: '30/08/2022',
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
