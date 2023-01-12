import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

class TableW extends StatelessWidget {
  const TableW({super.key, required this.heading, required this.data});
  final String heading, data;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FractionColumnWidth(.5),
        1: FractionColumnWidth(.5),
      },
      children: [
        TableRow(
            //decoration: BoxDecoration(color: tRowBgColor),
            children: [
              Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(10, 9, 0, 9),
                  child: Text(heading, style: CustomTextStyle.ts12reg),
                )
              ]),
              Column(children: [
                Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0, 9, 10, 9),
                    child: Text(data, style: CustomTextStyle.tp12semi))
              ]),
            ]),
      ],
    );
  }
}

//
//Colored table
//
class TableC extends StatelessWidget {
  const TableC({super.key, required this.heading, required this.data});
  final String heading, data;
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FractionColumnWidth(.5),
        1: FractionColumnWidth(.5),
      },
      children: [
        TableRow(decoration: BoxDecoration(color: tRowBgColor), children: [
          Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10, 9, 0, 9),
              child: Text(heading, style: CustomTextStyle.ts12reg),
            )
          ]),
          Column(children: [
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(0, 9, 10, 9),
                child: Text(data, style: CustomTextStyle.tp12semi))
          ]),
        ]),
      ],
    );
  }
}

//
//
//
class TableWDblue extends StatelessWidget {
  const TableWDblue({super.key, required this.heading, required this.data});
  final String heading, data;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FractionColumnWidth(.5),
        1: FractionColumnWidth(.5),
      },
      children: [
        TableRow(
            //decoration: BoxDecoration(color: tRowBgColor),
            children: [
              Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(10, 9, 0, 9),
                  child: Text(heading, style: CustomTextStyle.ts12reg),
                )
              ]),
              Column(children: [
                Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0, 9, 10, 9),
                    child: Text(data, style: CustomTextStyle.pc12semi))
              ]),
            ]),
      ],
    );
  }
}

//
// Table Title
//
class Ttitle extends StatelessWidget {
  const Ttitle(
      {super.key, required this.id, required this.date, required this.btntext});
  final String id, date, btntext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                id,
                style: CustomTextStyle.tp16bold,
              ),
              Text(
                date,
                style: CustomTextStyle.ts12med,
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 8, horizontal: 28)),
                backgroundColor: MaterialStatePropertyAll(primaryColor20),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ))),
            child: Text(
              btntext,
              style: CustomTextStyle.pc12med,
            ),
          ),
        ],
      ),
    );
  }
}
