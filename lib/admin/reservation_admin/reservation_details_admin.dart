import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/dropdown.dart';

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
