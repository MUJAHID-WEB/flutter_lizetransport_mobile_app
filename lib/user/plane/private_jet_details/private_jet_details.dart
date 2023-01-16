import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class PrivetJetDetails extends StatefulWidget {
  const PrivetJetDetails({super.key});

  @override
  State<PrivetJetDetails> createState() => _PrivetJetDetailsState();
}

class _PrivetJetDetailsState extends State<PrivetJetDetails> {
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
                      heading: 'Boeing 737',
                      data: 'by Beechcraft',
                    ),
                    TableC(
                      heading: 'Passengers',
                      data: '06',
                    ),
                    TableW(
                      heading: 'Speed',
                      data: 'TAS 270 Kts',
                    ),
                    TableC(
                      heading: 'Range',
                      data: 'Length',
                    ),
                    TableW(
                      heading: 'Wingspan',
                      data: '26,2128M',
                    ),
                    TableC(
                      heading: 'Height',
                      data: '7,9248M',
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
