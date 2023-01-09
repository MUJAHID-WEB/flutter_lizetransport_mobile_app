import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class ReservationPlane extends StatefulWidget {
  const ReservationPlane({super.key});

  @override
  State<ReservationPlane> createState() => _ReservationPlaneState();
}

class _ReservationPlaneState extends State<ReservationPlane> {
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
                      makeInput(
                        label: "Departing City",
                        hintText: "Enter your city name",
                      ),
                      makeInput(
                        label: "Returning City",
                        hintText: "Enter your city name",
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
