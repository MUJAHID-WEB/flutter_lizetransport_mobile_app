import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled/cancelled.dart';
import '../unpaid/unpaid.dart';

class PaidInvoice extends StatefulWidget {
  const PaidInvoice({super.key});

  @override
  State<PaidInvoice> createState() => _PaidInvoiceState();
}

class _PaidInvoiceState extends State<PaidInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Invoices',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UnpaidInvoice()),
                        );
                      },
                      child: Text(
                        'Unpaid Invoices',
                        style: CustomTextStyle.ts14reg,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Paid Invoices',
                        style: CustomTextStyle.sc14semi,
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

              //
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
                    date: '23/08/2022',
                    btntext: 'Paid',
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
                          data: '0',
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
                  PaidVarTitle(
                    id: 'I909112',
                    date: '23/08/2022',
                    btntext: 'Paid',
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
                          data: '0',
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
