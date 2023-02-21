import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import 'colors.dart';

class FilterHead extends StatelessWidget {
  const FilterHead({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: CustomTextStyle.tp16semi,
          ),
          Row(
            children: [
              ImageIcon(
                AssetImage(
                  'assets/image/filter.png',
                ),
                color: textSecondary,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Filter',
                style: CustomTextStyle.ts14med,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
