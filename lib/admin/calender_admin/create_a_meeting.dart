import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class CalenderCreateMeeting extends StatefulWidget {
  const CalenderCreateMeeting({super.key});

  @override
  State<CalenderCreateMeeting> createState() => _CalenderCreateMeetingState();
}

class _CalenderCreateMeetingState extends State<CalenderCreateMeeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Create a Meeting',
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                  child: Column(
                    children: [
                      //
                      //
                      makeInput30(
                        label: "Description",
                        hintText: "Enter Description",
                      ),

                      //
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BacknCancelBtn(btnText: 'Cancel'),
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
