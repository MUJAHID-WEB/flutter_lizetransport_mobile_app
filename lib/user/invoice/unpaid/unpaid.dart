import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class UnpaidInvoice extends StatefulWidget {
  const UnpaidInvoice({super.key});

  @override
  State<UnpaidInvoice> createState() => _UnpaidInvoiceState();
}

class _UnpaidInvoiceState extends State<UnpaidInvoice> {
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
    );
  }
}
