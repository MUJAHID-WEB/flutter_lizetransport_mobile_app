import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class AddPlaneDetails extends StatefulWidget {
  const AddPlaneDetails({super.key});

  @override
  State<AddPlaneDetails> createState() => _AddPlaneDetailsState();
}

class _AddPlaneDetailsState extends State<AddPlaneDetails> {
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
                        label: "LTI Name",
                        hintText: "Airbus A319 LTI-LBZ",
                      ),
                      makeInput30(
                        label: "Manufacturer",
                        hintText: "Airbus",
                      ),
                      makeInput30(
                        label: "Model",
                        hintText: "A319",
                      ),
                      makeInput30(
                        label: "LTI Plane Number",
                        hintText: "LTI-J3209911",
                      ),
                      //
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
