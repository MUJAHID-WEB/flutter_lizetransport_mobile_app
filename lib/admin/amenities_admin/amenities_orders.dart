import 'package:flutter/material.dart';
import 'package:lize/common/custom_button.dart';
import 'package:lize/user/amenities/confirm_order/confirm_order.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import 'amenities_add.dart';

class AmenitiesOrderAdmin extends StatefulWidget {
  const AmenitiesOrderAdmin({super.key});

  @override
  State<AmenitiesOrderAdmin> createState() => _AmenitiesOrderAdminState();
}

class _AmenitiesOrderAdminState extends State<AmenitiesOrderAdmin> {
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
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                //creator
                DeliveredTitle(
                  id: 'R2390',
                  date: '23/08/2022',
                  btntext: 'Delivered',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Trip',
                        data: 'T2389',
                      ),
                      TableC(
                        heading: 'Order ID',
                        data: 'O-2391121',
                      ),
                      TableW(
                        heading: 'Quantity',
                        data: '01',
                      ),
                      TableC(
                        heading: 'Unit Price',
                        data: '250.000',
                      ),
                      TableW(
                        heading: 'Total Price',
                        data: '250.000',
                      ),
                      //
                      EditButton330(
                        btnText: 'Edit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: AmenitiesAdd(),
                            ),
                          );
                        },
                      )
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
                RcvdTitle(
                  id: 'R2390',
                  date: '23/08/2022',
                  btntext: 'Confirmed',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Trip',
                        data: 'T2389',
                      ),
                      TableC(
                        heading: 'Order ID',
                        data: 'O-2391121',
                      ),
                      TableW(
                        heading: 'Quantity',
                        data: '01',
                      ),
                      TableC(
                        heading: 'Unit Price',
                        data: '250.000',
                      ),
                      TableW(
                        heading: 'Total Price',
                        data: '250.000',
                      ),
                      EditButton330(
                        btnText: 'Edit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: AmenitiesAdd(),
                            ),
                          );
                        },
                      )
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
