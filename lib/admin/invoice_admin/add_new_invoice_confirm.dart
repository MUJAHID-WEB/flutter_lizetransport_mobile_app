import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';

class InvoiceConfirmAdmin extends StatefulWidget {
  const InvoiceConfirmAdmin({super.key});

  @override
  State<InvoiceConfirmAdmin> createState() => _InvoiceConfirmAdminState();
}

class _InvoiceConfirmAdminState extends State<InvoiceConfirmAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 48),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 48),
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
                DeleteButton330(
                  btnText: 'Delete',
                ),
                AddButton335(
                  btnText: 'Download Invoice',
                ),
                SizedBox(
                  height: 20,
                ),
                // Back and Save Btn
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BacknCancelBtn(
                      btnText: 'Back',
                    ),
                    NextBtn(
                      btnText: 'Save',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
