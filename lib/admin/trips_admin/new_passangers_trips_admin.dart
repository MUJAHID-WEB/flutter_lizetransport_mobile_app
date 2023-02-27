import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import 'ct_details_admin.dart';
import 'ct_passangers_admin.dart';

class NewPassengerTrips extends StatefulWidget {
  const NewPassengerTrips({super.key});

  @override
  State<NewPassengerTrips> createState() => _NewPassengerTripsState();
}

class _NewPassengerTripsState extends State<NewPassengerTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'New Passengers',
      ),
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: CtDetailsAdmin(),
                            ),
                          );
                        },
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
