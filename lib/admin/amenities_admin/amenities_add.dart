import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class AmenitiesAdd extends StatefulWidget {
  const AmenitiesAdd({super.key});

  @override
  State<AmenitiesAdd> createState() => _AmenitiesAddState();
}

class _AmenitiesAddState extends State<AmenitiesAdd> {
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
                      //
                      //
                      makeInput30(
                        label: "Reference Number",
                        hintText: "A9901201",
                      ),
                      makeInput30(
                        label: "Name",
                        hintText: "Barbera",
                      ),
                      makeInput30(
                        label: "LTI Name",
                        hintText: "Barbera/LTI-90",
                      ),
                      makeInput30(
                        label: "Price",
                        hintText: "260.00",
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
