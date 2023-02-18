import 'package:flutter/material.dart';
import 'package:lize/common/custom_button.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUserBack(
        title: 'Amenities',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: cardColor,
            //height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 263, 0),
                  child: Text(
                    'Amenities',
                    style: CustomTextStyle.tp16semi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/image/drinks04.jpg'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                              child: Text(
                                'Cabernet Franc',
                                style: CustomTextStyle.tp14semi,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Price
                      Text(
                        '160.000',
                        style: CustomTextStyle.sc20bold,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //heading
                      Text(
                        'Reservation',
                        style: CustomTextStyle.tp16semi,
                      ),
                      //Remove
                      Text(
                        'Remove',
                        style: CustomTextStyle.red14med,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                      // thickness: 1,
                      // color: borderColor,
                      ),
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
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //heading
                          Text(
                            'Trip',
                            style: CustomTextStyle.tp16semi,
                          ),
                          //Remove
                          Text(
                            'Remove',
                            style: CustomTextStyle.red14med,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                          // thickness: 1,
                          // color: borderColor,
                          ),
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
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SaveButton335(
                    btnText: 'Confirm',
                    onPressed: () {
                      //
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Stack(
                              //overflow: Overflow.visible,
                              clipBehavior: Clip.none,
                              children: <Widget>[
                                Positioned(
                                  right: 0.0,
                                  top: 0.0,
                                  child: InkResponse(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: CircleAvatar(
                                      child: Icon(
                                        Icons.close,
                                        color: textSecondary,
                                      ),
                                      backgroundColor: cardColor,
                                    ),
                                  ),
                                ),
                                //
                                Container(
                                  height: 298,
                                  width: double.infinity,
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.horizontal(
                                  //     left: Radius.circular(20),
                                  //     right: Radius.circular(20),
                                  //   ),
                                  // ),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 40, 0, 0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/image/confirm.jpg'),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 30, 0, 12),
                                            child: Text(
                                              'Your Order has been Confirmed!',
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyle.tp18semi,
                                            ),
                                          ),
                                          Text(
                                            'Thank you for your adding Amenities to your Trip/Reservation.',
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyle.tp14med,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                //
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
