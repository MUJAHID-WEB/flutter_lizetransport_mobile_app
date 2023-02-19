import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/bottom_nav_bar.dart';
import '../../../common/colors.dart';
import '../../amenities/add_amenities/add_amenities.dart';
import '../../auth_user/sign_in/signin.dart';
import '../../plane/private_jet/private_jet.dart';
import '../../trips/current_trip/current_trip.dart';
import '../dboard/dboard.dart';

class MenuUser extends StatefulWidget {
  const MenuUser({super.key});

  @override
  State<MenuUser> createState() => _MenuUserState();
}

class _MenuUserState extends State<MenuUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 50),
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
                                'John Doe',
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
                      //Navigator.of(context).pop();
                      IconButton(
                        onPressed: () {
                          // Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageUser()),
                          );
                        },
                        icon: ImageIcon(
                          AssetImage(
                            'assets/image/cancel.png',
                          ),
                          color: cardColor,
                        ),
                      ),
                    ],
                  ),
                ),
                //menu list
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      MenuListW(
                        iconMain: AssetImage("assets/image/dashboard.png"),
                        title: 'Dashboard',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageUser()),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/trip.png"),
                        title: 'My Trips',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurrentTrips()),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/plane_menu.png"),
                        title: 'Planes',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlaneUser()),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/amenities.png"),
                        title: 'Amenities',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddAmenities()),
                          );
                        },
                      ),
                      MenuListW50(
                        iconMain: AssetImage("assets/image/help.png"),
                        title: 'Help',
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePageUser()),
                          // );
                        },
                      ),
                      SizedBox(height: 200),

                      //
                      MenuListW(
                        iconMain: AssetImage("assets/image/logout_admin.png"),
                        title: 'Logout',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInUser()),
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
    return ListTile(
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
    return ListTile(
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
    );
  }
}
