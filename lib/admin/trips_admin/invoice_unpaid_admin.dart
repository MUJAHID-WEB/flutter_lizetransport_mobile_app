import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

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
            //Inprogress
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                //creator
                InprogressTitle(id: 'L9021', btntext: 'Inprogress'),

                //Table
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Date Departed',
                        data: '02/31/2022',
                      ),
                      TableC(
                        heading: 'Pilot',
                        data: 'Jerome Baga',
                      ),
                      TableW(
                        heading: 'Plane',
                        data: 'A319',
                      ),
                      TableC(
                        heading: 'Key Passenger',
                        data: 'Moses Barry',
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
                  padding: EdgeInsets.symmetric(vertical: 20),
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
                  padding: EdgeInsets.symmetric(vertical: 20),
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
                  padding: EdgeInsets.symmetric(vertical: 20),
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
