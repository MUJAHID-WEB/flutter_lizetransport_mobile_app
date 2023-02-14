import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/colors.dart';

import '../../../common/bottom_nav_bar.dart';
import '../../../common/custom_button.dart';
import '../../../common/dropdown.dart';
import '../../../common/forms.dart';
import '../../../common/text_style.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(title: 'Reservation'),
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                          EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                          DropdownItem(
                            label: 'Select Transportation',
                          ),
                          DropdownItem02(
                            label: 'Passengers',
                          ),
                          //
                          makeInput(
                            label: "Departing Date & Time",
                            hintText: "23 August",
                          ),
                          makeInput(
                            label: "Departing Date & Time",
                            hintText: "27 August",
                          ),

                          //
                          UserButton335(
                            btnText: 'Send',
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
                                          height: 410,
                                          width: double.infinity,
                                          alignment: Alignment.center,
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/image/envelop.jpg'),
                                                Text(
                                                  'Thank you for the reservation. A member of client service will be in-touch with you as soon as possible.',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyle.ts14med,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                //
                                                Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                    text:
                                                        'Your reservation number is ',
                                                    style: CustomTextStyle
                                                        .tp20bold,
                                                    children: <InlineSpan>[
                                                      TextSpan(
                                                        text: 'LTI-3498020012',
                                                        style: CustomTextStyle
                                                            .pc20bold,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                //
                                                Text(
                                                  'A confirmation message was sent to your email.',
                                                  style:
                                                      CustomTextStyle.ts14med,
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                //
                                                Text(
                                                  'Thank you!',
                                                  style:
                                                      CustomTextStyle.pc20bold,
                                                ),
                                              ],
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
      ]),
      //bottomNavigationBar: HomePageUser(),
    );
  }
}
