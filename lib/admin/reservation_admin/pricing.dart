import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/passanger_reservation.dart';
import 'package:lize/admin/reservation_admin/reservation_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
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
    );
  }
}
