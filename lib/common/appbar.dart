import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/drawer.dart';
import 'package:lize/common/text_style.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

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
  //ZoomDrawerController _controller;
  final _controller = ZoomDrawerController();
  @override
  // void initState() {
  //   _controller = ZoomDrawerController();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: CustomTextStyle.tp18semi,
      ),
      leading: MenuWidget(),
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

//
class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
      icon: ImageIcon(
        AssetImage('assets/image/menu.png'),
      ),
    );
  }
}
