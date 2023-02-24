import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';

class AmenitiesInventory extends StatefulWidget {
  const AmenitiesInventory({super.key});

  @override
  State<AmenitiesInventory> createState() => _AmenitiesInventoryState();
}

class _AmenitiesInventoryState extends State<AmenitiesInventory> {
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
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                //creator
                InprogressTitle(id: 'LT1498912', btntext: 'Available'),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Available Qty',
                        data: '50',
                      ),
                      TableC(
                        heading: 'Max. Qty.',
                        data: '01',
                      ),
                      TableW(
                        heading: 'Min. Qty.',
                        data: '05',
                      ),
                      TableC(
                        heading: 'Lifetime Qty',
                        data: '2500',
                      ),
                      TableW(
                        heading: 'Last Order Qty',
                        data: '50',
                      ),
                      TableC(
                        heading: 'Last Order Unit Price',
                        data: '50',
                      ),
                      TableW(
                        heading: 'Last Order Cost',
                        data: '50',
                      ),
                      TableC(
                        heading: 'Vendor',
                        data: 'Bema Corp',
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
