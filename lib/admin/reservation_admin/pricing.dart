import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/passanger_reservation.dart';
import 'package:lize/admin/reservation_admin/reservation_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
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
                    percent: 1.0,
                    center: Text("3/3", style: CustomTextStyle.pc12semi),
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
                    'Pricing',
                    style: CustomTextStyle.pc16semi,
                  ),
                  // Text(
                  //   'Next : Passengers',
                  //   style: CustomTextStyle.ts14reg,
                  // ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          //height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        makeInput30(
                          label: "Price",
                          hintText: "25,000,00",
                        ),
                        makeInput30(
                          label: "Discount",
                          hintText: "0%",
                        ),
                        makeInput30(
                          label: "Discount Value",
                          hintText: "0%",
                        ),
                        makeInput30(
                          label: "Discount Code",
                          hintText: "LTIDI0029",
                        ),
                        makeInput30(
                          label: "Final Price",
                          hintText: "25,000,00",
                        ),
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BacknCancelBtn(
                              btnText: 'Back',
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
                            NextBtn(
                              btnText: 'Reserve',
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
                          ],
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
    );
  }
}
