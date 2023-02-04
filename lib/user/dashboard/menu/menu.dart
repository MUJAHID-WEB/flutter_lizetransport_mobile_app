import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

class MenuUser extends StatefulWidget {
  const MenuUser({super.key});

  @override
  State<MenuUser> createState() => _MenuUserState();
}

class _MenuUserState extends State<MenuUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
    );
  }
}
