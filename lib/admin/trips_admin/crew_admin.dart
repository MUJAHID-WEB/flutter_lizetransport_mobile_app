import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class CrewTrips extends StatefulWidget {
  const CrewTrips({super.key});

  @override
  State<CrewTrips> createState() => _CrewTripsState();
}

class _CrewTripsState extends State<CrewTrips> {
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
                        label: "First Name",
                        hintText: "Mariame Ba",
                      ),
                      makeInput30(
                        label: "Last Name",
                        hintText: "Mariame Ba",
                      ),
                      makeInput30(
                        label: "Middle Name",
                        hintText: "Mariame Ba",
                      ),
                      //
                      AddButton335(
                        btnText: 'Add Crew',
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
