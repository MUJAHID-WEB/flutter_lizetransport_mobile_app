import 'package:flutter/material.dart';
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
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.redAccent),
        ),
      ),
      SizedBox(
        height: 25,
      )
    ],
  );
}
