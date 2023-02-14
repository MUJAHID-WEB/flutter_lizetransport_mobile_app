import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled/cancelled.dart';
import '../paid/paid.dart';

class UnpaidInvoice extends StatefulWidget {
  const UnpaidInvoice({super.key});

  @override
  State<UnpaidInvoice> createState() => _UnpaidInvoiceState();
}

class _UnpaidInvoiceState extends State<UnpaidInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Invoices',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            color: cardColor,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 253, 0),
                  child: Text(
                    'Invoices',
                    style: CustomTextStyle.tp16semi,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Unpaid Invoices',
                          style: CustomTextStyle.sc14semi,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaidInvoice()),
                          );
                        },
                        child: Text(
                          'Paid Invoices',
                          style: CustomTextStyle.ts14reg,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CancelledInvoice()),
                          );
                        },
                        child: Text(
                          'cancelled Invoices',
                          style: CustomTextStyle.ts14reg,
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    UnpExTitle(
                      id: 'I909112',
                      date: '23/08/2022',
                      btntext: 'Unpaid',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                  ],
                ),
                //
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    UnpExTitle(
                      id: 'I909112',
                      date: '23/08/2022',
                      btntext: 'Unpaid',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
