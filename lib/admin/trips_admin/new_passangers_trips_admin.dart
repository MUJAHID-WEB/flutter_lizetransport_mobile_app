import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class NewPassengerTrips extends StatefulWidget {
  const NewPassengerTrips({super.key});

  @override
  State<NewPassengerTrips> createState() => _NewPassengerTripsState();
}

class _NewPassengerTripsState extends State<NewPassengerTrips> {
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
                      makeInput30(
                        label: "Citizenship",
                        hintText: "Senegal",
                      ),
                      //
                      AddButton335(
                        btnText: 'Add Passenger',
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
