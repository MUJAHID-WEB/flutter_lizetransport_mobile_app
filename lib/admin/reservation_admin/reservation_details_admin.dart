import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/passanger_reservation.dart';
import 'package:lize/admin/reservation_admin/reservation_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/dropdown.dart';
import '../../common/text_style.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //progress
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 60,
                  width: 40,
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2500,
                    radius: 30.0,
                    lineWidth: 10.0,
                    percent: 0.33,
                    center: Text("1/3", style: CustomTextStyle.pc12semi),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: primaryColor,
                    backgroundColor: textSecondary10,
                  ),
                ),
              ),
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reservation Details',
                    style: CustomTextStyle.pc16semi,
                  ),
                  Text(
                    'Next : Passengers',
                    style: CustomTextStyle.ts14reg,
                  ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                            type: PageTransitionType.leftToRight,
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
        ),
      ),
    );
  }
}
