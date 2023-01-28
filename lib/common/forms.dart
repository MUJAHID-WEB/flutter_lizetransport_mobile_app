import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

Widget makeInput({label, hintText, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: CustomTextStyle.tp14semi,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        style: CustomTextStyle.ts12med,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),

          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: borderColor),
          // ),
          hintText: hintText,
          hintStyle: CustomTextStyle.ts12med,
        ),
      ),
      SizedBox(
        height: 25,
      )
    ],
  );
}

//
// borderRadius: 30
//
Widget makeInput30({label, hintText, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: CustomTextStyle.tp14semi,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        style: CustomTextStyle.ts12med,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          hintText: hintText,
          hintStyle: CustomTextStyle.ts12med,
        ),
      ),
      SizedBox(
        height: 25,
      )
    ],
  );
}

// borderRadius: 30
//bg -05
//
Widget makeInputbg5({label, hintText, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: CustomTextStyle.cc5016med,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        style: CustomTextStyle.cc14reg,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: cardColor05,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: cardColor05),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: cardColor05,
            ),
          ),
          hintText: hintText,
          hintStyle: CustomTextStyle.cc14reg,
        ),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}
