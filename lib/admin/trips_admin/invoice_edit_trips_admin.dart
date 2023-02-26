import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/dropdown.dart';
import '../../common/table.dart';
import '../../common/text_style.dart';
import 'invoice_unpaid_admin.dart';

class InvoiceTripsEdit extends StatefulWidget {
  const InvoiceTripsEdit({super.key});

  @override
  State<InvoiceTripsEdit> createState() => _InvoiceTripsEditState();
}

class _InvoiceTripsEditState extends State<InvoiceTripsEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'Add/ Edit Invoices',
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Details',
                        style: CustomTextStyle.sc16semi,
                      ),
                      //
                      Text(
                        '+ Add Product',
                        style: CustomTextStyle.pc14med,
                      ),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      //
                      ProductAdmin(label: 'Products'),
                      makeInput30(
                        label: "Description",
                        hintText: "Private Jet",
                      ),
                      ResAdmin(
                        label: 'Reservation',
                      ),
                      TripAdmin(label: 'Trip'),
                      makeInput30(
                        label: "Total",
                        hintText: "Private Jet",
                      ),
                      //
                      DeleteButton330(
                        btnText: 'Delete',
                      ),
                    ],
                  ),
                ),
                //
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TableW17(
                        heading: 'Subtotal :',
                        data: '16.550.000',
                      ),
                      TableW17(
                        heading: 'TVA :',
                        data: '2.800.000',
                      ),
                      //
                      TableCblue(
                        heading: 'Total :',
                        data: '19.350.000',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AddButton335(
                    btnText: 'Download Invoice',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Back and Save Btn
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
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
                              child: UnpInvoiceAdmin(),
                            ),
                          );
                        },
                      ),
                      NextBtn(
                        btnText: 'Save',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: UnpInvoiceAdmin(),
                            ),
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
    );
  }
}
