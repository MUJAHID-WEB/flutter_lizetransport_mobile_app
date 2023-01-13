import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class PaidInvoice extends StatefulWidget {
  const PaidInvoice({super.key});

  @override
  State<PaidInvoice> createState() => _PaidInvoiceState();
}

class _PaidInvoiceState extends State<PaidInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices'),
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
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
    );
  }
}
