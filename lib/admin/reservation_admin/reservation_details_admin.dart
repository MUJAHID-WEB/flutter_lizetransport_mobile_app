import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class ReservationDetailsAdmin extends StatefulWidget {
  const ReservationDetailsAdmin({super.key});

  @override
  State<ReservationDetailsAdmin> createState() =>
      _ReservationDetailsAdminState();
}

class _ReservationDetailsAdminState extends State<ReservationDetailsAdmin> {
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
                        label: "Departing City",
                        hintText: "Enter your city name",
                      ),
                      makeInput30(
                        label: "Returning City",
                        hintText: "Enter your city name",
                      ),
                      //
                      //
                      //
                      //
                      makeInput30(
                        label: "Made by",
                        hintText: "Enter your name",
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
