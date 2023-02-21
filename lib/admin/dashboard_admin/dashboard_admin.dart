import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/dropdown.dart';
import '../../common/text_style.dart';
import '../reservation_admin/new_passenger_reservation.dart';
import '../reservation_admin/pricing.dart';
import '../reservation_admin/reservation_admin.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(title: 'Dashboard'),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: bgColorPage,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //
                      DboardCard(
                        iconMain: AssetImage("assets/image/home.png"),
                        iconMore: AssetImage("assets/image/more.png"),
                        number: '111,875',
                        title: 'Total Numbers',
                      ),
                      //
                      DboardCard(
                        iconMain: AssetImage("assets/image/users.png"),
                        iconMore: AssetImage("assets/image/more.png"),
                        number: '45',
                        title: 'Total Teams',
                      ),
                      //
                    ],
                  ),
                  //
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //
                      DboardCard(
                        iconMain: AssetImage("assets/image/crews.png"),
                        iconMore: AssetImage("assets/image/more.png"),
                        number: '1,500',
                        title: 'Total Crews',
                      ),
                      //
                      DboardCard(
                        iconMain: AssetImage("assets/image/files.png"),
                        iconMore: AssetImage("assets/image/more.png"),
                        number: '754,222',
                        title: 'Total Files',
                      ),
                      //
                    ],
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 360.01,
                      height: 136,
                      decoration: BoxDecoration(
                        color: cardColor,
                        border: Border.all(width: 1, color: blackColor05),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New Reservations',
                                    style: CustomTextStyle.tp16semi),
                                Container(
                                    width: 72,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: paidBtn10,
                                      // border:
                                      //     Border.all(width: 1, color: blackColor05),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(26.0)),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(7, 5, 0, 0),
                                      child: Text('+ 18.7%',
                                          style: CustomTextStyle.paid14med),
                                    )),
                                Text('1,315', style: CustomTextStyle.pc28bold),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Divider(
                              thickness: 5,
                              color: paidBtn,
                              height: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New Invoices',
                                    style: CustomTextStyle.tp16semi),
                                Container(
                                    width: 72,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: unpaidBtn10,
                                      // border:
                                      //     Border.all(width: 1, color: blackColor05),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(26.0)),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(7, 5, 0, 0),
                                      child: Text('+ 11.7%',
                                          style: CustomTextStyle.unpaid14med),
                                    )),
                                Text('135', style: CustomTextStyle.pc28bold),
                              ],
                            ),
                          ),
                          //
                        ],
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: cardColor,
                        border: Border.all(width: 1, color: blackColor05),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownRevenue(
                            label: 'Revenue of last week',
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Feb 18', style: CustomTextStyle.ts12reg),
                                Text('\$5,458',
                                    style: CustomTextStyle.pc24bold),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//card
class DboardCard extends StatelessWidget {
  const DboardCard(
      {super.key,
      required this.iconMain,
      required this.iconMore,
      required this.number,
      required this.title});
  final AssetImage iconMain, iconMore;
  final String number, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: cardColor,
      height: 177,
      width: 172,
      decoration: BoxDecoration(
        color: cardColor,
        border: Border.all(width: 1, color: blackColor05),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //icon
                Container(
                  // color: bgColor,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: bgColor,
                    //border: Border.all(width: 5, color: blackColor05),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: ImageIcon(
                    iconMain,
                    color: secondaryColor,
                    size: 24,
                  ),
                ),
                //3 dots
                ImageIcon(
                  iconMore,
                  color: secondaryColor,
                  size: 24,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Number
            Text(
              number,
              style: CustomTextStyle.sc26bold,
            ),
            // Total Trips
            Text(
              title,
              style: CustomTextStyle.bc16semi,
            ),
          ],
        ),
      ),
    );
  }
}
