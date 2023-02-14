import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'My Profile',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            color: cardColor,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(children: [Text('data')]),
          ),
        ),
      ),
    );
  }
}
