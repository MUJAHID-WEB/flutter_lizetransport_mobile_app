import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import 'ct_crew_admin.dart';

class CrewTrips extends StatefulWidget {
  const CrewTrips({super.key});

  @override
  State<CrewTrips> createState() => _CrewTripsState();
}

class _CrewTripsState extends State<CrewTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'New Crew',
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
                        label: "Duty",
                        hintText: "Pilot",
                      ),
                      //
                      AddButton335(
                        btnText: 'Add Crew',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: CtCrewAdmin(),
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
