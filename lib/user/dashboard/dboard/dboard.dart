import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({super.key});

  @override
  State<DashboardUser> createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Table01(),
            //Table02(),
          ],
        ),
      ),
    );
  }
}
