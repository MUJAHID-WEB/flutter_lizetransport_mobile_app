import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/appbar.dart';
import '../../../common/custom_button.dart';
import '../../../common/dropdown.dart';
import '../../../common/forms.dart';
import '../profile_main/profile_main.dart';

class OrgInfo extends StatefulWidget {
  const OrgInfo({super.key});

  @override
  State<OrgInfo> createState() => _OrgInfoState();
}

class _OrgInfoState extends State<OrgInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUserBack(
        title: 'Organizational Information',
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: cardColor,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      child: Column(
                        children: [
                          TypeOrgInfo(
                            label: 'Type',
                          ),
                          makeInput(
                            label: "Organisation Name",
                            hintText: "Fondation Ebomaf",
                          ),
                          makeInput(
                            label: "Address",
                            hintText:
                                "1290 Rue du Chef, Ouagadougou, Burkina Faso",
                          ),
                          makeInput(
                            label: "Telephone",
                            hintText: "+1",
                          ),
                          makeInput(
                            label: "Mail",
                            hintText: "lti@outlook.com",
                          ),
                          //
                          SaveButton335(
                            btnText: 'Save',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfileUser()),
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
        ),
      ),
    );
  }
}
