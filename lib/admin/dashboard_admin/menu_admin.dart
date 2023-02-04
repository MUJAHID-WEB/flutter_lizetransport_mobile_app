import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../common/colors.dart';

class MenuAdmin extends StatefulWidget {
  const MenuAdmin({super.key});

  @override
  State<MenuAdmin> createState() => _MenuAdminState();
}

class _MenuAdminState extends State<MenuAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: secondaryColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //avatar
                      Row(
                        children: [
                          Image.asset('assets/image/avatar.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //name
                              Text(
                                'Master Admin',
                                style: CustomTextStyle.cc16med,
                              ),
                              //email
                              Text(
                                'Johndoe@gmail.com',
                                style: CustomTextStyle.cc14reg,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //cross
                      ImageIcon(
                        AssetImage(
                          'assets/image/cancel.png',
                        ),
                        color: cardColor,
                      ),
                    ],
                  ),
                ),
                //menu list
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Column(
                    children: [
                      MenuListW(
                        iconMain: AssetImage("assets/image/home.png"),
                        title: 'Dashboard',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/phone_admin.png"),
                        title: 'Reservations',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/trips_admin.png"),
                        title: 'Trips',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/invoice_admin.png"),
                        title: 'Invoices',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/planes_admin.png"),
                        title: 'Planes',
                      ),
                      MenuListW50(
                        iconMain:
                            AssetImage("assets/image/amenities_admin.png"),
                        title: 'Amenities',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/contacts_admin.png"),
                        title: 'Contacts',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/team_admin.png"),
                        title: 'Team',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/crews.png"),
                        title: 'Flying Team',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/msg_admin.png"),
                        title: 'Messages',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/calender_admin.png"),
                        title: 'Calendar',
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/setting_admin.png"),
                        title: 'Setting',
                      ),
                      //
                      MenuListW(
                        iconMain: AssetImage("assets/image/logout_admin.png"),
                        title: 'Logout',
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//

class MenuListW extends StatelessWidget {
  const MenuListW({super.key, required this.iconMain, required this.title});
  final AssetImage iconMain;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          //icon
          ImageIcon(
            iconMain,
            color: cardColor,
          ),
          SizedBox(
            width: 15,
          ),
          //title
          Text(
            title,
            style: CustomTextStyle.cc14med,
          ),
        ],
      ),
    );
  }
}

//

class MenuListW50 extends StatelessWidget {
  const MenuListW50({super.key, required this.iconMain, required this.title});
  final AssetImage iconMain;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          //icon
          ImageIcon(
            iconMain,
            color: cardColor50,
          ),
          SizedBox(
            width: 15,
          ),
          //title
          Text(
            title,
            style: CustomTextStyle.cc5014med,
          ),
        ],
      ),
    );
  }
}
