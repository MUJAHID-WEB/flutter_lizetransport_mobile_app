import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

class AppBarAdmin extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarAdmin({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(61.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: CustomTextStyle.tp18semi,
      ),
      leading: IconButton(
        icon: ImageIcon(
          AssetImage('assets/image/menu.png'),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
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
                // constraints: BoxConstraints(
                //   minWidth: 18,
                //   minHeight: 18,
                // ),
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
