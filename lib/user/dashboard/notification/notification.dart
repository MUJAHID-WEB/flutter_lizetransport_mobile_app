import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/bottom_nav_bar.dart';
import '../../../common/custom_button.dart';
import '../../../common/dropdown.dart';
import '../../../common/forms.dart';

class NotificationUser extends StatefulWidget {
  const NotificationUser({super.key});

  @override
  State<NotificationUser> createState() => _NotificationUserState();
}

class _NotificationUserState extends State<NotificationUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(title: 'Notifications'),
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            color: cardColor,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //date
                  Text(
                    'Today - 10 June, 2020',
                    style: CustomTextStyle.dc12reg,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //
                  Nmsg(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 2,
                      color: dividerColor,
                    ),
                  ),
                  Nmsg(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 2,
                      color: dividerColor,
                    ),
                  ),
                  Nmsg(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 2,
                      color: dividerColor,
                    ),
                  ),
                  Nmsg(),
                  SizedBox(
                    height: 30,
                  ),

                  //
                  Text(
                    'Today - 07 June, 2020',
                    style: CustomTextStyle.dc12reg,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //
                  Nmsg(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 2,
                      color: dividerColor,
                    ),
                  ),
                  Nmsg(),
                ],
              ),
            ),
          ),
        ),
      ]),
      //bottomNavigationBar: HomePageUser(),
    );
  }
}

//

class Nmsg extends StatelessWidget {
  const Nmsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //bell
        Container(
          height: 40,
          width: 40,
          //alignment: Alignment.topRight,
          decoration: BoxDecoration(
              color: secondaryColor20,
              //border: Border.all(width: 1, color: blackColor05),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: ImageIcon(
              AssetImage(
                'assets/image/bell.png',
              ),
              color: secondaryColor,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),

        SizedBox(
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading
              Text(
                'Loreum Ipsum',
                style: CustomTextStyle.sc16semi,
              ),
              SizedBox(
                height: 5,
              ),
              //notifications
              Text(
                'Your prescription End date 25 Oct.add to the doctor\'s new prescription appointment.',
                style: CustomTextStyle.ts14reg,
                maxLines: 4,
              ),
            ],
          ),
        )
      ],
    );
  }
}
