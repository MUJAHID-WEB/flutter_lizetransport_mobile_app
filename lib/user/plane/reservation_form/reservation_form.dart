import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/appbar.dart';
import '../../../common/custom_button.dart';
import '../../../common/dropdown.dart';
import '../../../common/forms.dart';
import '../../../common/text_style.dart';

class ReservationPlane extends StatefulWidget {
  const ReservationPlane({super.key});

  @override
  State<ReservationPlane> createState() => _ReservationPlaneState();
}

class _ReservationPlaneState extends State<ReservationPlane> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUserBack(
        title: 'Planes',
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: cardColor,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                      child: Column(
                        children: [
                          makeInput(
                            label: "Departing City",
                            hintText: "Enter your city name",
                          ),
                          makeInput(
                            label: "Returning City",
                            hintText: "Enter your city name",
                          ),
                          DropdownItem02(
                            label: 'Passengers',
                          ),
                          makeInput(
                            label: "Departing Date & Time",
                            hintText: "23 August",
                          ),
                          makeInput(
                            label: "Returning Date & Time",
                            hintText: "27 August",
                          ),
                          //
                          SaveButton335(
                            btnText: 'Save',
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
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 40, 0, 0),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      'assets/image/phnmsg.jpg'),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 30),
                                                    child: Text(
                                                      'Thank you for the reservation. A member of client service will be in-touch with you as soon as possible.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyle
                                                          .tp18med,
                                                    ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
