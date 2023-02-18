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

class _UnpaidInvoiceState extends State<UnpaidInvoice>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Invoices',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Container(
            color: cardColor,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 253, 10),
                  child: Text(
                    'Invoices',
                    style: CustomTextStyle.tp16semi,
                  ),
                ),
                Divider(),

                //
                TabBar(
                  isScrollable: true,
                  unselectedLabelColor: textSecondary,
                  unselectedLabelStyle: CustomTextStyle.ts14reg,
                  labelColor: secondaryColor,
                  labelStyle: CustomTextStyle.sc14semi,
                  tabs: [
                    Tab(
                      text: 'Unpaid Invoices',
                    ),
                    Tab(
                      text: 'Paid Invoices',
                    ),
                    Tab(
                      text: 'Cancelled Invoices',
                    )
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: cardColor,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Unpaid(),
                      paid(),
                      Cancelled(),
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

//
class Unpaid extends StatelessWidget {
  const Unpaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            //
            Divider(),

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
    );
  }
}
