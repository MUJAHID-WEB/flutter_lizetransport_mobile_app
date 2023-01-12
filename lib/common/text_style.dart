import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

class CustomTextStyle {
  static TextStyle tp14semi =
      TextStyle(color: textPrimary, fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle tp12semi =
      TextStyle(color: textPrimary, fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle tp16bold =
      TextStyle(color: textPrimary, fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle pc12semi =
      TextStyle(color: primaryColor, fontSize: 12, fontWeight: FontWeight.w600);
  static TextStyle pc12med =
      TextStyle(color: primaryColor, fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle ts12med = TextStyle(
      color: textSecondary, fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle ts12reg = TextStyle(
      color: textSecondary, fontSize: 12, fontWeight: FontWeight.w400);
}


// TextStyle( 
//     fontSize: 18,
//     height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
//     color: Colors.redAccent, //font color
//     backgroundColor: Colors.black12, //background color
//     letterSpacing: 5, //letter spacing
//     decoration: TextDecoration.underline, //make underline
//     decorationStyle: TextDecorationStyle.double, //double underline
//     decorationColor: Colors.brown, //text decoration 'underline' color
//     decorationThickness: 1.5, //decoration 'underline' thickness
//     fontStyle: FontStyle.italic
// ),

// class CustomTextStyle {
//   static const TextStyle textStyle = TextStyle(
//     color: YourColor,
//     fontSize: YourSize,
//     fontWeight: YourFontWeight
//   );
// }