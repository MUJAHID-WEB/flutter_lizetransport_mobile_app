import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/custom_button.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../add_amenities/add_amenities.dart';

class AmenitiesUser extends StatefulWidget {
  const AmenitiesUser({super.key});

  @override
  State<AmenitiesUser> createState() => _AmenitiesUserState();
}

class _AmenitiesUserState extends State<AmenitiesUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Amenities',
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
                        'Amenities',
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
                              'Drinks',
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
                              'Food',
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
                              'Technologies',
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
                              'Flowers',
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
                          AmenitiesRes(
                            imagePlane: AssetImage("assets/image/drinks01.jpg"),
                            model: 'Wine',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAmenities()),
                              );
                            },
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
                          AmenitiesRes(
                            imagePlane: AssetImage("assets/image/drinks02.jpg"),
                            model: 'Champagne',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAmenities()),
                              );
                            },
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
                          AmenitiesRes(
                            imagePlane: AssetImage("assets/image/drinks03.jpg"),
                            model: 'Soft Drink',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAmenities()),
                              );
                            },
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
class AmenitiesRes extends StatelessWidget {
  const AmenitiesRes(
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
                            'Type',
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
                    AddReservation(
                      btnText: 'Add to reservation',
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cabernet Franc',
                      style: CustomTextStyle.tp14semi,
                    ),
                    Text(
                      'Red grape variety and member of the Cabernet family.',
                      style: CustomTextStyle.tp14reg,
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
      ],
    );
  }
}
