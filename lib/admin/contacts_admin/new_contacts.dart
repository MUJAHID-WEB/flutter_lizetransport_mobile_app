import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class ContactsNew extends StatefulWidget {
  const ContactsNew({super.key});

  @override
  State<ContactsNew> createState() => _ContactsNewState();
}

class _ContactsNewState extends State<ContactsNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Add Contacts',
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
                        label: "Full Name",
                        hintText: "John Doe",
                      ),
                      makeInput30(
                        label: "Title",
                        hintText: "Facility Manager",
                      ),
                      makeInput30(
                        label: "Mobile Number",
                        hintText: "+1",
                      ),
                      makeInput30(
                        label: "Email",
                        hintText: "johndoe@gmail.com",
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
