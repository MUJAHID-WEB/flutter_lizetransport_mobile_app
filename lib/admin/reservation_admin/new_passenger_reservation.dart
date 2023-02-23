import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/passanger_reservation.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class NewPassengerReservation extends StatefulWidget {
  const NewPassengerReservation({super.key});

  @override
  State<NewPassengerReservation> createState() =>
      _NewPassengerReservationState();
}

class _NewPassengerReservationState extends State<NewPassengerReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(title: 'New Passengers'),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
