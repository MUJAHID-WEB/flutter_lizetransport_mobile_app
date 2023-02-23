import 'package:flutter/material.dart';
import 'package:lize/common/dropdown.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';
import '../../common/forms.dart';
import '../../common/text_style.dart';
import 'add_new_invoice_confirm.dart';
import 'invoice_admin.dart';

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
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //progress
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 60,
                  width: 40,
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2500,
                    radius: 30.0,
                    lineWidth: 10.0,
                    percent: 0.50,
                    center: Text("1/2", style: CustomTextStyle.pc12semi),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: primaryColor,
                    backgroundColor: textSecondary10,
                  ),
                ),
              ),
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Client',
                    style: CustomTextStyle.pc16semi,
                  ),
                  Text(
                    'Next : Confirm Invoice',
                    style: CustomTextStyle.ts14reg,
                  ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  SelectClient(label: 'Moussa Dao'),
                  //
                  makeInput30(
                    label: "Invoice Date",
                    hintText: "Select Date",
                  ),
                  makeInput30(
                    label: "Due Date",
                    hintText: "Select Date",
                  ),
                  //
                  // Add New Invoice
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: // Edit and Delete Btn
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BacknCancelBtn(
                          btnText: 'Cancel',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 500),
                                child: InvoiceAdmin(),
                              ),
                            );
                          },
                        ),
                        NextBtn(
                          btnText: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: InvoiceConfirmAdmin(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ])),
    );
  }
}
