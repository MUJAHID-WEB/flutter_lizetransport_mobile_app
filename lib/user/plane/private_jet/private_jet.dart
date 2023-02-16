import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/custom_button.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../reservation_form/reservation_form.dart';

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
          child: Column(
            children: [
              Container(
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
                    //
                  ],
                ),
              ),

              //

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          PlaneBook(
                            imagePlane: AssetImage("assets/image/plane01.jpg"),
                            model: 'BE350',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReservationPlane()),
                              );
                            },
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
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          PlaneBook(
                            imagePlane: AssetImage("assets/image/plane02.jpg"),
                            model: '8X',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReservationPlane()),
                              );
                            },
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
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          PlaneBook(
                            imagePlane: AssetImage("assets/image/plane03.jpg"),
                            model: '8X',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReservationPlane()),
                              );
                            },
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
                      ),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

//
class PlaneBook extends StatelessWidget {
  const PlaneBook(
      {super.key,
      required this.onPressed,
      required this.imagePlane,
      required this.model});
  final void Function()? onPressed;
  final AssetImage imagePlane;
  final String model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 228,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
            image: DecorationImage(
              image: imagePlane,
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 20, 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Model
                          Text(
                            'Model',
                            style: CustomTextStyle.cc18semi,
                          ),
                          //No.
                          Text(
                            model,
                            style: CustomTextStyle.cc14med,
                          ),
                        ],
                      ),
                    ),
                    //Book Now
                    BookNow(
                      btnText: 'Book Now',
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //heading
              Text(
                'Details',
                style: CustomTextStyle.tp16semi,
              ),
              //dropdown
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: textPrimary10,
                    //border: Border.all(width: 1, color: blackColor05),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: ImageIcon(
                    AssetImage(
                      'assets/image/arrow_up.png',
                    ),
                    color: textPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 1,
            color: borderColor,
          ),
        ),
      ],
    );
  }
}
