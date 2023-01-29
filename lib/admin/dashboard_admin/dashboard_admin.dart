import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/forms.dart';

import '../../common/custom_button.dart';
import '../../common/text_style.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: bgColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
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
        borderRadius: BorderRadius.all(
            Radius.circular(10.0) //                 <--- border radius here
            ),
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
                    borderRadius: BorderRadius.all(Radius.circular(
                            50.0) //                 <--- border radius here
                        ),
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
