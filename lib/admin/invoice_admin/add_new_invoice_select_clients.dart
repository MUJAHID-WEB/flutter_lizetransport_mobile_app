import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class SelectClientAdmin extends StatefulWidget {
  const SelectClientAdmin({super.key});

  @override
  State<SelectClientAdmin> createState() => _SelectClientAdminState();
}

class _SelectClientAdminState extends State<SelectClientAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice'),
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                // Add New Invoice
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: // Edit and Delete Btn
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BacknCancelBtn(
                        btnText: 'Cancel',
                      ),
                      NextBtn(
                        btnText: 'Next',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
