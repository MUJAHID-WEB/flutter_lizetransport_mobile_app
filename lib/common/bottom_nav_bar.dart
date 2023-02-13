import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

import '../admin/dashboard_admin/dashboard_admin.dart';
import '../admin/message_admin/msg_list_admin.dart';
import '../admin/reservation_admin/reservation_admin.dart';
import '../admin/trips_admin/current_trips_admin.dart';
import '../user/dashboard/dboard/dboard.dart';
import '../user/invoice/unpaid/unpaid.dart';
import '../user/message/msg_list/msg_list.dart';
import '../user/profile/profile_main/profile_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Bottom Nav Bar for Admin
  int _selectedIndex = 0;

  final _pages = [
    DashboardAdmin(),
    ReservationAdmin(),
    CurrentTripAdmin(),
    MsgListAdmin(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: blackColor05,
              blurRadius: 12,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: SizedBox(
            height: 85,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 25,
              unselectedItemColor: textSecondary,
              selectedItemColor: secondaryColor,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedLabelStyle: CustomTextStyle.sc14semi,
              unselectedLabelStyle: CustomTextStyle.ts14med,
              backgroundColor: cardColor,
              elevation: 12,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/home.png'),
                  ),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/phone_admin.png'),
                  ),
                  label: "Reservation",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/trips_admin.png'),
                  ),
                  label: "Trips",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/msg_admin.png'),
                  ),
                  label: "Messages",
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

//
class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  // Bottom Nav Bar for user
  int _selectedIndex = 0;

  final _pages = [
    DashboardUser(),
    UnpaidInvoice(),
    MsgListUser(),
    ProfileUser(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: blackColor05,
              blurRadius: 12,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: SizedBox(
            height: 84,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 25,
              unselectedItemColor: textSecondary,
              selectedItemColor: secondaryColor,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedLabelStyle: CustomTextStyle.sc14semi,
              unselectedLabelStyle: CustomTextStyle.ts14med,
              backgroundColor: cardColor,
              elevation: 12,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/dashboard.png'),
                  ),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/invoice.png'),
                  ),
                  label: "Invoices",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/msg.png'),
                  ),
                  label: "Messages",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/profile.png'),
                  ),
                  label: "My Profile",
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
