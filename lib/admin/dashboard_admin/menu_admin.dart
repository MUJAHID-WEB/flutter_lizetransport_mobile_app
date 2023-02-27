import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';
import 'package:page_transition/page_transition.dart';

import '../../common/bottom_nav_bar.dart';
import '../../common/colors.dart';
import '../../common/settings.dart';
import '../amenities_admin/amenities_drinks.dart';
import '../auth_admin/login.dart';
import '../calender_admin/calender.dart';
import '../contacts_admin/contacts.dart';
import '../flying_team_admin/flying_team.dart';
import '../invoice_admin/invoice_admin.dart';
import '../message_admin/msg_list_admin.dart';
import '../plane_admin/private_jet_admin.dart';
import '../reservation_admin/reservation_admin.dart';
import '../team_admin/team_admin.dart';
import '../trips_admin/current_trips_admin.dart';

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
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: HomePage(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/phone_admin.png"),
                        title: 'Reservations',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: ReservationAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/trips_admin.png"),
                        title: 'Trips',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: CurrentTripAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/invoice_admin.png"),
                        title: 'Invoices',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: InvoiceAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/planes_admin.png"),
                        title: 'Planes',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: PrivateJetAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain:
                            AssetImage("assets/image/amenities_admin.png"),
                        title: 'Amenities',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: AmenitiesAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/contacts_admin.png"),
                        title: 'Contacts',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: ContactsAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/team_admin.png"),
                        title: 'Team',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: TeamAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/crews.png"),
                        title: 'Flying Team',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: FlyingTeamAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/msg_admin.png"),
                        title: 'Messages',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: MsgListAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/calender_admin.png"),
                        title: 'Calendar',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: CalenderAdmin(),
                            ),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/setting_admin.png"),
                        title: 'Setting',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: SettingAdmin(),
                            ),
                          );
                        },
                      ),
                      //
                      MenuListW(
                        iconMain: AssetImage("assets/image/logout_admin.png"),
                        title: 'Logout',
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: LogInAdmin(),
                            ),
                          );
                        },
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
  const MenuListW(
      {super.key, required this.iconMain, required this.title, this.onPressed});
  final AssetImage iconMain;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        // selectedColor: cardColor,
        // selectedTileColor: cardColor,
        onTap: onPressed,
        title: Row(
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
      ),
    );
  }
}

//

class MenuListW50 extends StatelessWidget {
  const MenuListW50(
      {super.key, required this.iconMain, required this.title, this.onPressed});
  final AssetImage iconMain;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        // selectedColor: cardColor,
        // selectedTileColor: cardColor,
        onTap: onPressed,
        title: Row(
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
      ),
    );
  }
}
