import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../../common/text_style.dart';
import '../cancelled/cancelled.dart';
import '../unpaid/unpaid.dart';

class paid extends StatefulWidget {
  const paid({super.key});

  @override
  State<paid> createState() => _paidState();
}

class _paidState extends State<paid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Column(
          children: [
            //
            Divider(),

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
    );
  }
}
