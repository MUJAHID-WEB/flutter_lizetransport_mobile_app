import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class PlaneChar extends StatefulWidget {
  const PlaneChar({super.key});

  @override
  State<PlaneChar> createState() => _PlaneCharState();
}

class _PlaneCharState extends State<PlaneChar> {
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
                        label: "Passengers",
                        hintText: "19",
                      ),
                      makeInput30(
                        label: "Length",
                        hintText: "14.224M",
                      ),
                      makeInput30(
                        label: "Wingspan",
                        hintText: "7.653M",
                      ),
                      makeInput30(
                        label: "Max takeoff weight",
                        hintText: "680Kgs",
                      ),
                      makeInput30(
                        label: "Fuel Capacity",
                        hintText: "3611 Lbs",
                      ),
                      makeInput30(
                        label: "Height",
                        hintText: "4.369M",
                      ),
                      //
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BacknCancelBtn(btnText: 'Back'),
                          NextBtn(btnText: "Add")
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
