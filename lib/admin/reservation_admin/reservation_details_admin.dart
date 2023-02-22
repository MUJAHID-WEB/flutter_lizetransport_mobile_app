import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/passanger_reservation.dart';
import 'package:lize/admin/reservation_admin/reservation_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/dropdown.dart';

class ReservationDetailsAdmin extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  ReservationDetailsAdmin({
    Key? key,
  })  : preferredSize = const Size.fromHeight(61.0),
        super(key: key);
  @override
  State<ReservationDetailsAdmin> createState() =>
      _ReservationDetailsAdminState();
}

class _ReservationDetailsAdminState extends State<ReservationDetailsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminProgress(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                child: Column(
                  children: [
                    makeInput30(
                      label: "Departing City",
                      hintText: "Enter your city name",
                    ),
                    makeInput30(
                      label: "Returning City",
                      hintText: "Enter your city name",
                    ),
                    DropdownItem30(
                      label: 'Select Transportation',
                    ),
                    DropdownItem0230(
                      label: 'Passengers',
                    ),
                    //
                    makeInput30(
                      label: "Departing Date & Time",
                      hintText: "23 August",
                    ),
                    makeInput30(
                      label: "Returning Date & Time",
                      hintText: "27 August",
                    ),
                    //
                    makeInput30(
                      label: "Made by",
                      hintText: "Enter your name",
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BacknCancelBtn(
                          btnText: 'Cancel',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        NextBtn(
                          btnText: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: PassengerResAdmin(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
