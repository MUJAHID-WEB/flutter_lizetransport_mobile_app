import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

class CustomButtonEdit extends StatelessWidget {
  const CustomButtonEdit({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
        backgroundColor: MaterialStatePropertyAll(cardColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(
              color: primaryColor,
              width: 1.0,
            ),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: CustomTextStyle.pc16med,
      ),
    );
  }
}
