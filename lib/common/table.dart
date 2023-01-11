import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

class Table01 extends StatelessWidget {
  const Table01({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Table(
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
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Passengers',
                                      style: CustomTextStyle.ts12reg),
                                )
                              ]),
                              Column(children: [
                                Container(
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('06',
                                        style: CustomTextStyle.tp12semi))
                              ]),
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
//
//
class Table02 extends StatelessWidget {
  const Table02({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Table(
                      columnWidths: {
                        0: FractionColumnWidth(.5),
                        1: FractionColumnWidth(.5),
                      },
                      children: [
                        TableRow(
                            decoration: BoxDecoration(color: tRowBgColor),
                            children: [
                              Column(children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Passengers',
                                      style: CustomTextStyle.ts12reg),
                                )
                              ]),
                              Column(children: [
                                Container(
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('06',
                                        style: CustomTextStyle.tp12semi))
                              ]),
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
