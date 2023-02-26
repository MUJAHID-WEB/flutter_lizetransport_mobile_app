import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import 'invoice_edit_trips_admin.dart';

class UnpInvoiceAdmin extends StatefulWidget {
  const UnpInvoiceAdmin({super.key});

  @override
  State<UnpInvoiceAdmin> createState() => _UnpInvoiceAdminState();
}

class _UnpInvoiceAdminState extends State<UnpInvoiceAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(children: [
        Column(
          children: [
            //New Passenger

            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                //creator
                NpassangerTitle(
                  id: 'Invoices',
                  btntext: 'Add Invoice',
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 500),
                        child: InvoiceTripsEdit(),
                      ),
                    );
                  },
                ),
              ],
            ),
            //Unpaid
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                //creator
                UnpExTitle(
                  id: 'I909112',
                  date: '23/08/2022 ',
                  btntext: 'Unpaid',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Trip',
                        data: 'T901122',
                      ),
                      TableC(
                        heading: 'Payment Method',
                        data: 'ACH',
                      ),
                      TableW(
                        heading: 'Due Date',
                        data: '01/31/2023',
                      ),
                      TableC(
                        heading: 'Invoice Amount',
                        data: '13.500.000',
                      ),
                      TableW(
                        heading: 'Balance Due',
                        data: '4.500.000',
                      ),
                      // Edit Btn
                      EditButton330(
                        btnText: 'Edit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: InvoiceTripsEdit(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Unpaid
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                //creator
                UnpExTitle(
                  id: 'I909112',
                  date: '23/08/2022 ',
                  btntext: 'Unpaid',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Trip',
                        data: 'T901122',
                      ),
                      TableC(
                        heading: 'Payment Method',
                        data: 'ACH',
                      ),
                      TableW(
                        heading: 'Due Date',
                        data: '01/31/2023',
                      ),
                      TableC(
                        heading: 'Invoice Amount',
                        data: '13.500.000',
                      ),
                      TableW(
                        heading: 'Balance Due',
                        data: '4.500.000',
                      ),
                      // Edit Btn
                      EditButton330(
                        btnText: 'Edit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: InvoiceTripsEdit(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Unpaid
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
                //creator
                UnpExTitle(
                  id: 'I909112',
                  date: '23/08/2022 ',
                  btntext: 'Unpaid',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Trip',
                        data: 'T901122',
                      ),
                      TableC(
                        heading: 'Payment Method',
                        data: 'ACH',
                      ),
                      TableW(
                        heading: 'Due Date',
                        data: '01/31/2023',
                      ),
                      TableC(
                        heading: 'Invoice Amount',
                        data: '13.500.000',
                      ),
                      TableW(
                        heading: 'Balance Due',
                        data: '4.500.000',
                      ),
                      // Edit Btn
                      EditButton330(
                        btnText: 'Edit',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: InvoiceTripsEdit(),
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
      ]),
    );
  }
}
