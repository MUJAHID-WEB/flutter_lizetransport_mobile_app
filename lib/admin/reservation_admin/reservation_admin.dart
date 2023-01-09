import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class ReservationAdmin extends StatefulWidget {
  const ReservationAdmin({super.key});

  @override
  State<ReservationAdmin> createState() => _ReservationAdminState();
}

class _ReservationAdminState extends State<ReservationAdmin> {
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
                      //
                      //
                      //
                      //
                      makeInput(
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
