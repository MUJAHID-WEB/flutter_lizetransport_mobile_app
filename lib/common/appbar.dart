import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../user/dashboard/notification/notification.dart';
import 'drawer.dart';

class AppBarAdmin extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarAdmin({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(61.0),
        super(key: key);

  @override
  State<AppBarAdmin> createState() => _AppBarAdminState();
}

class _AppBarAdminState extends State<AppBarAdmin> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: CustomTextStyle.tp18semi,
      ),
      leading: IconButton(
        onPressed: () => ZoomDrawer.of(context)?.toggle(),
        icon: ImageIcon(
          AssetImage('assets/image/menu.png'),
        ),
      ),
      actions: [
        Stack(
          children: <Widget>[
            IconButton(
                icon: ImageIcon(
                  AssetImage('assets/image/bell_admin.png'),
                ),
                onPressed: () {
                  // setState(() {
                  //   counter = 0;
                  // });
                }),
            // counter != 0
            //     ?
            Positioned(
              right: 8,
              top: 6,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: rcvdBtn,
                  border: Border.all(width: 2, color: rcvdBtn20),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '4',
                  // '$counter',
                  style: CustomTextStyle.cc10bold,
                  textAlign: TextAlign.center,
                ),
              ),
            )
            // : new Container()
          ],
        ),
      ],
    );
  }
}

// AppBar User menu

class AppBarUser extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarUser({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(61.0),
        super(key: key);

  @override
  State<AppBarUser> createState() => _AppBarUserState();
}

class _AppBarUserState extends State<AppBarUser> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: CustomTextStyle.tp18semi,
      ),
      leading: IconButton(
        onPressed: () => ZoomDrawer.of(context)!.toggle(),
        icon: ImageIcon(
          AssetImage('assets/image/menu.png'),
        ),
      ),
      actions: [
        Stack(
          children: <Widget>[
            IconButton(
                icon: ImageIcon(
                  AssetImage('assets/image/bell.png'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationUser()),
                  );
                  // setState(() {
                  //   counter = 0;
                  // });
                }),
            // counter != 0
            //     ?
            Positioned(
              right: 8,
              top: 6,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(width: 2, color: Color(0xFFEDF2F6)),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '4',
                  // '$counter',
                  style: CustomTextStyle.cc10bold,
                  textAlign: TextAlign.center,
                ),
              ),
            )
            // : new Container()
          ],
        ),
      ],
    );
  }
}

// AppBar User Back

class AppBarUserBack extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarUserBack({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(61.0),
        super(key: key);

  @override
  State<AppBarUserBack> createState() => _AppBarUserBackState();
}

class _AppBarUserBackState extends State<AppBarUserBack> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: CustomTextStyle.tp18semi,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: ImageIcon(
          AssetImage('assets/image/arrow_back.png'),
          color: textPrimary,
        ),
      ),
      actions: [
        Stack(
          children: <Widget>[
            IconButton(
                icon: ImageIcon(
                  AssetImage('assets/image/bell.png'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationUser()),
                  );
                  // setState(() {
                  //   counter = 0;
                  // });
                }),
            // counter != 0
            //     ?
            Positioned(
              right: 8,
              top: 6,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(width: 2, color: Color(0xFFEDF2F6)),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '4',
                  // '$counter',
                  style: CustomTextStyle.cc10bold,
                  textAlign: TextAlign.center,
                ),
              ),
            )
            // : new Container()
          ],
        ),
      ],
    );
  }
}
