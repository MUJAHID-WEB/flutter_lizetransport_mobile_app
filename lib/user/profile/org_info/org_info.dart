import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class OrgInfo extends StatefulWidget {
  const OrgInfo({super.key});

  @override
  State<OrgInfo> createState() => _OrgInfoState();
}

class _OrgInfoState extends State<OrgInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
