import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/bottom_nav_bar.dart';
import 'package:lize/common/colors.dart';
import 'package:get/get.dart';
import '../admin/dashboard_admin/dashboard_admin.dart';
import '../admin/dashboard_admin/menu_admin.dart';
import '../user/dashboard/dboard/dboard.dart';
import '../user/dashboard/menu/menu.dart';

//Admin
class hpage extends StatefulWidget {
  const hpage({super.key});

  @override
  State<hpage> createState() => _hpageState();
}

class _hpageState extends State<hpage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      drawerShadowsBackgroundColor: Color(0x66EDF2F6),
      shadowLayer1Color: secondaryColor,
      shadowLayer2Color: Color(0x66EDF2F6),
      borderRadius: 30,
      angle: 0,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      // controller: _controller,
      mainScreen: HomePage(),
      mainScreenScale: 0.36,
      menuScreen: MenuAdmin(),
      menuScreenWidth: double.infinity,
      duration: Duration(milliseconds: 550),
      //openDragSensitivity: 525,
    );
  }
}

// user

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      drawerShadowsBackgroundColor: Color(0x66EDF2F6),
      shadowLayer1Color: primaryColor,
      shadowLayer2Color: Color(0x66EDF2F6),
      borderRadius: 30,
      angle: 0,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      controller: _drawerController,
      // mainScreen: DashboardUser(),
      mainScreen: HomePageUser(),
      mainScreenScale: 0.36,
      menuScreen: MenuUser(),
      menuScreenWidth: double.infinity,
      duration: Duration(milliseconds: 550),
      //openDragSensitivity: 525,
      //  ),
    );
  }
}
