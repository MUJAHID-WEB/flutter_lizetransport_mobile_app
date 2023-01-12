import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class InvoiceTripsEdit extends StatefulWidget {
  const InvoiceTripsEdit({super.key});

  @override
  State<InvoiceTripsEdit> createState() => _InvoiceTripsEditState();
}

class _InvoiceTripsEditState extends State<InvoiceTripsEdit> {
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
                      makeInput30(
                        label: "Description",
                        hintText: "Private Jet",
                      ),
                      //
                      //
                      makeInput30(
                        label: "Total",
                        hintText: "Private Jet",
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                  child: Column(
                    children: [
                      //
                      makeInput30(
                        label: "Description",
                        hintText: "Private Jet",
                      ),
                      //
                      //
                      makeInput30(
                        label: "Total",
                        hintText: "Private Jet",
                      )
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