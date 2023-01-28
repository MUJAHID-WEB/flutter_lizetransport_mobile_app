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
            Column(
              children: [
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //
                    DboardCard(),
                    //
                    DboardCard(),
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
                    DboardCard(),
                    //
                    DboardCard(),
                    //
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//card
class DboardCard extends StatelessWidget {
  const DboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: 177,
      width: 172,
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
                    color: bgColor,
                    height: 50,
                    width: 50,
                    child: Icon(Icons.home)),
                //3 dots
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Number
            Text(
              '111,875',
              style: CustomTextStyle.sc26bold,
            ),
            // Total Trips
            Text(
              'Total Trips',
              style: CustomTextStyle.bc16semi,
            ),
          ],
        ),
      ),
    );
  }
}
