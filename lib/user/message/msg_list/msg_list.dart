import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';

class MsgListUser extends StatefulWidget {
  const MsgListUser({super.key});

  @override
  State<MsgListUser> createState() => _MsgListUserState();
}

class _MsgListUserState extends State<MsgListUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Messages',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(children: [Text('data')]),
        ),
      ),
    );
  }
}
