import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class NewPassenger extends StatefulWidget {
  const NewPassenger({super.key});

  @override
  State<NewPassenger> createState() => _NewPassengerState();
}

class _NewPassengerState extends State<NewPassenger> {
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
                      makeInput(
                        label: "First Name",
                        hintText: "Mariame Ba",
                      ),
                      makeInput(
                        label: "Last Name",
                        hintText: "Mariame Ba",
                      ),
                      makeInput(
                        label: "Middle Name",
                        hintText: "Mariame Ba",
                      ),
                      makeInput(
                        label: "Citizenship",
                        hintText: "Senegal",
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
