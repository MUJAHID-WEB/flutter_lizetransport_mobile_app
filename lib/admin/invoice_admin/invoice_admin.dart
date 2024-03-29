import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lize/common/filter.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../reservation_admin/passanger_reservation.dart';
import 'add_new_invoice_select_clients.dart';

class InvoiceAdmin extends StatefulWidget {
  const InvoiceAdmin({super.key});

  @override
  State<InvoiceAdmin> createState() => _InvoiceAdminState();
}

class _InvoiceAdminState extends State<InvoiceAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Invoices',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //Unpaid
                Column(
                  children: [
                    FilterHead(title: 'Invoices'),
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
                            heading: 'Bal. Due',
                            data: '4.500.000',
                          ),
                          TableW(
                            heading: 'Payment Method',
                            data: 'ACH',
                          ),
                          TableC(
                            heading: 'Invoice Amount',
                            data: '13.500.000',
                          ),
                          TableW(
                            heading: 'Due Date',
                            data: '01/31/2023',
                          ),
                          // Edit and Delete Btn
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              EditButton160(
                                btnText: 'Edit',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 500),
                                      child: SelectClientAdmin(),
                                    ),
                                  );
                                },
                              ),
                              DeleteButton160(
                                btnText: 'Delete',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Paid
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    PaidVarTitle(
                      id: 'I909112',
                      date: '23/08/2022 ',
                      btntext: 'Paid',
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
                            heading: 'Bal. Due',
                            data: '4.500.000',
                          ),
                          TableW(
                            heading: 'Payment Method',
                            data: 'ACH',
                          ),
                          TableC(
                            heading: 'Invoice Amount',
                            data: '13.500.000',
                          ),
                          TableW(
                            heading: 'Due Date',
                            data: '01/31/2023',
                          ),
                          // Edit and Delete Btn
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              EditButton160(
                                btnText: 'Edit',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 500),
                                      child: SelectClientAdmin(),
                                    ),
                                  );
                                },
                              ),
                              DeleteButton160(
                                btnText: 'Delete',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Cancelled
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    CancelledTitle(
                      id: 'I909112',
                      date: '23/08/2022 ',
                      btntext: 'Cancelled',
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
                            heading: 'Bal. Due',
                            data: '4.500.000',
                          ),
                          TableW(
                            heading: 'Payment Method',
                            data: 'ACH',
                          ),
                          TableC(
                            heading: 'Invoice Amount',
                            data: '13.500.000',
                          ),
                          TableW(
                            heading: 'Due Date',
                            data: '01/31/2023',
                          ),
                          // Edit and Delete Btn
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              EditButton160(
                                btnText: 'Edit',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 500),
                                      child: SelectClientAdmin(),
                                    ),
                                  );
                                },
                              ),
                              DeleteButton160(
                                btnText: 'Delete',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Add New Invoice
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: AddButton335(
                    btnText: 'Add New Invoice',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: SelectClientAdmin(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
