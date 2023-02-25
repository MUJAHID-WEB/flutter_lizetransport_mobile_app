import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import '../plane_admin/add_plane_details.dart';
import '../trips_admin/current_trips_admin.dart';

class FtPlanesAdmin extends StatefulWidget {
  const FtPlanesAdmin({super.key});

  @override
  State<FtPlanesAdmin> createState() => _FtPlanesAdminState();
}

class _FtPlanesAdminState extends State<FtPlanesAdmin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                  child: CurrentTripAdmin(),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: textSecondary.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(2, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        FtPlaneEdit(
                          imagePlane: AssetImage("assets/image/plane01.jpg"),
                          model: 'BE350',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: CurrentTripAdmin(),
                              ),
                            );
                          },
                        ),

                        //Table
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              TableW(
                                heading: 'LTI Name',
                                data: 'Airbus A319 LTI-LBZ',
                              ),
                              TableC(
                                heading: 'Manufacturer',
                                data: 'Airbus',
                              ),
                              TableW(
                                heading: 'Model',
                                data: 'A319',
                              ),
                              TableC(
                                heading: 'LTI Plane Number',
                                data: 'LTI-J3209911',
                              ),
                              TableW(
                                heading: 'Wingspan',
                                data: '26,2128M',
                              ),
                              TableC(
                                heading: 'Height',
                                data: '7,9248M',
                              ),
                              TableW(
                                heading: 'Length',
                                data: '14.224M',
                              ),
                              TableC(
                                heading: 'Fuel capacity',
                                data: '3611 Lbs',
                              ),
                              TableW(
                                heading: 'Max takeoff weight',
                                data: '6804Kgs',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
              ],
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: textSecondary.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  FtPlaneEdit(
                    imagePlane: AssetImage("assets/image/plane02.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: CurrentTripAdmin(),
                        ),
                      );
                    },
                  ),

                  //Table
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TableW(
                          heading: 'LTI Name',
                          data: 'Airbus A319 LTI-LBZ',
                        ),
                        TableC(
                          heading: 'Manufacturer',
                          data: 'Airbus',
                        ),
                        TableW(
                          heading: 'Model',
                          data: 'A319',
                        ),
                        TableC(
                          heading: 'LTI Plane Number',
                          data: 'LTI-J3209911',
                        ),
                        TableW(
                          heading: 'Wingspan',
                          data: '26,2128M',
                        ),
                        TableC(
                          heading: 'Height',
                          data: '7,9248M',
                        ),
                        TableW(
                          heading: 'Length',
                          data: '14.224M',
                        ),
                        TableC(
                          heading: 'Fuel capacity',
                          data: '3611 Lbs',
                        ),
                        TableW(
                          heading: 'Max takeoff weight',
                          data: '6804Kgs',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          //
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: textSecondary.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  FtPlaneEdit(
                    imagePlane: AssetImage("assets/image/plane03.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: CurrentTripAdmin(),
                        ),
                      );
                    },
                  ),

                  //Table
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TableW(
                          heading: 'LTI Name',
                          data: 'Airbus A319 LTI-LBZ',
                        ),
                        TableC(
                          heading: 'Manufacturer',
                          data: 'Airbus',
                        ),
                        TableW(
                          heading: 'Model',
                          data: 'A319',
                        ),
                        TableC(
                          heading: 'LTI Plane Number',
                          data: 'LTI-J3209911',
                        ),
                        TableW(
                          heading: 'Wingspan',
                          data: '26,2128M',
                        ),
                        TableC(
                          heading: 'Height',
                          data: '7,9248M',
                        ),
                        TableW(
                          heading: 'Length',
                          data: '14.224M',
                        ),
                        TableC(
                          heading: 'Fuel capacity',
                          data: '3611 Lbs',
                        ),
                        TableW(
                          heading: 'Max takeoff weight',
                          data: '6804Kgs',
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
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: AddButton335(
              btnText: 'Add New Plane',
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 500),
                    child: AddPlaneDetails(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
class FtPlaneEdit extends StatelessWidget {
  const FtPlaneEdit(
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
                      btnText: 'Edit',
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
        Divider(),
      ],
    );
  }
}
