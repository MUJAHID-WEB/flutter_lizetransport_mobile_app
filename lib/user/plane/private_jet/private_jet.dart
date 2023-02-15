import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/custom_button.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';

class PlaneUser extends StatefulWidget {
  const PlaneUser({super.key});

  @override
  State<PlaneUser> createState() => _PlaneUserState();
}

class _PlaneUserState extends State<PlaneUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Planes',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              color: cardColor,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 253, 0),
                    child: Text(
                      'Planes',
                      style: CustomTextStyle.tp16semi,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),

                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        //
                        TextButton(
                          clipBehavior: Clip.none,
                          onPressed: () {
                            //
                          },
                          child: Text(
                            'Private Jets',
                            style: CustomTextStyle.sc14semi,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ReservationTrips()),
                            // );
                          },
                          child: Text(
                            'Helicopters',
                            style: CustomTextStyle.ts14reg,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => PastTrips()),
                            // );
                          },
                          child: Text(
                            'Cargo',
                            style: CustomTextStyle.ts14reg,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),
                  //

                  Container(
                    height: 228,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image/plane01.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 128, 0, 0),
                      child: Container(
                        height: 128,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            blackColor00,
                            blackColor,
                          ],
                        )),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                //Model
                                Text(
                                  'Model',
                                  style: CustomTextStyle.cc18semi,
                                ),
                                //No.
                                Text(
                                  'BE350',
                                  style: CustomTextStyle.cc14med,
                                ),
                              ],
                            ),
                            //Book Now
                            BookNow(btnText: 'Book Now'),
                          ],
                        ),
                      ),
                    ),
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
        ),
      ),
    );
  }
}
