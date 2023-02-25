import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/text_style.dart';

class FtEmployeeAdmin extends StatefulWidget {
  const FtEmployeeAdmin({super.key});

  @override
  State<FtEmployeeAdmin> createState() => _FtEmployeeAdminState();
}

class _FtEmployeeAdminState extends State<FtEmployeeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(children: [
        //Unpaid
        Column(
          children: [
            //creator
            AvailableTitle(
                id: 'John Ngolo Doe',
                image: 'assets/image/avatar.png',
                btntext: 'Level 4'),

            //Table
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TableW(
                    heading: 'Manager',
                    data: 'Marie Taylor',
                  ),
                  TableC(
                    heading: 'Supervisor',
                    data: 'Jimmie Dang',
                  ),
                  TableW(
                    heading: 'Department',
                    data: 'Pilot',
                  ),
                  TableC(
                    heading: 'Role',
                    data: 'Pilot',
                  ),
                  TableW(
                    heading: 'Total Hours',
                    data: '23099 Km',
                  ),
                  TableC(
                    heading: 'Start Date',
                    data: '03/12/2020',
                  ),
                  TableW(
                    heading: 'Last Date',
                    data: '-',
                  ),
                  //
                  Container(
                    decoration: BoxDecoration(
                      color: tRowBgColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Note',
                            style: CustomTextStyle.ts12reg,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it.',
                            style: CustomTextStyle.tp12semi,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
