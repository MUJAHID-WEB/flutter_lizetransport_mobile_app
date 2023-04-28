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
            borderRadius: BorderRadius.circular(5),
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

// borderRadius: 30, Search icon
//
Widget Search30({label, hintText, obscureText = false}) {
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
          // icon: ImageIcon(AssetImage('assets/image/search.png')),
          // iconColor: textSecondary,
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

//signin user bg05 radius 05
Widget makeInput05tp5({label, hintText, controller, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: CustomTextStyle.ts16med,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: controller,
        style: CustomTextStyle.tp14reg,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: textPrimary05,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textPrimary05),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: textPrimary05,
            ),
          ),

          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: borderColor),
          // ),
          hintText: hintText,
          hintStyle: CustomTextStyle.tp14reg,
        ),
      ),
    ],
  );
}

//signup user bg25 radius 05
Widget makeInput05cc25({label, hintText, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: CustomTextStyle.cc8016med,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        style: CustomTextStyle.cc14reg,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: cardColor25,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: cardColor25),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: cardColor25,
            ),
          ),

          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: borderColor),
          // ),
          hintText: hintText,
          hintStyle: CustomTextStyle.cc14reg,
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
