import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';

import '../../common/colors.dart';
import '../../common/text_style.dart';

class MsgListAdmin extends StatefulWidget {
  const MsgListAdmin({super.key});

  @override
  State<MsgListAdmin> createState() => _MsgListAdminState();
}

class _MsgListAdminState extends State<MsgListAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Messages',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: cardColor,
            // height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //search

                  CupertinoSearchTextField(
                    // controller: controller,
                    //onChanged: (value) {},
                    //onSubmitted: (value) {},
                    //autocorrect: true,
                    placeholder: 'Search',
                    placeholderStyle: CustomTextStyle.ts12med,
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 20, 10),
                    prefixInsets: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),

                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: borderColor,
                          width: 1.0,
                        )),
                    //
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Team msg
                  msgCategory(
                    category: 'Team',
                    iconCat: AssetImage('assets/image/team_admin.png'),
                  ),
                  MsgSeen(),
                  Divider(),
                  //Flying Team
                  msgCategoryUnseen(
                    category: 'Flying Team',
                    iconCat: AssetImage('assets/image/crews.png'),
                  ),
                  Divider(),
                  //All Contacts

                  msgCategory(
                    category: 'All Contacts',
                    iconCat: AssetImage('assets/image/contacts_admin.png'),
                  ),
                  MsgTyping(),
                  MsgSeen(),
                  MsgUnSeen(),
                  MsgSeen(),
                  MsgUnSeen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//msg typing
class MsgTyping extends StatelessWidget {
  const MsgTyping({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //Avatar
            // Stack(
            //   children: [
            //     Positioned(
            //       child: Container(
            //           //online
            //           ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                Image.asset(
                  'assets/image/avatar.jpg',
                  height: 80,
                  width: 80,
                ),

                //Name
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Name
                      Text(
                        'Mr. John Doe',
                        style: CustomTextStyle.tp20semi,
                      ),
                      //Date
                      Text(
                        'Jacob Typing...',
                        style: CustomTextStyle.paidbtn12med,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        //Time & No.
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Time
            Text(
              '10:54 PM',
              style: CustomTextStyle.tp12med,
            ),
            //No.
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: secondaryColor,
                border: Border.all(width: 2, color: secondaryColor),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                '4',
                // '$counter',
                style: CustomTextStyle.cc10bold,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

////msg seen
class MsgSeen extends StatelessWidget {
  const MsgSeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //Avatar
              // Stack(
              //   children: [
              //     Positioned(
              //       child: Container(
              //           //online
              //           ),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Image.asset(
                    'assets/image/avatar.jpg',
                    height: 80,
                    width: 80,
                  ),

                  //Name
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Name
                        Text(
                          'Mr. John Doe',
                          style: CustomTextStyle.tp20semi,
                        ),
                        //Date
                        Text(
                          'Thanks!',
                          style: CustomTextStyle.ts12reg,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Time & No.
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //Time
              Text(
                '10:54 PM',
                style: CustomTextStyle.tp12med,
              ),
              //No.
              ImageIcon(
                AssetImage('assets/image/msgseen.png'),
                color: paidBtn,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

////msg unseen
class MsgUnSeen extends StatelessWidget {
  const MsgUnSeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //Avatar
            // Stack(
            //   children: [
            //     Positioned(
            //       child: Container(
            //           //online
            //           ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                Image.asset(
                  'assets/image/avatar.jpg',
                  height: 80,
                  width: 80,
                ),

                //Name
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Name
                      Text(
                        'Mr. John Doe',
                        style: CustomTextStyle.tp20semi,
                      ),
                      //Date
                      Text(
                        'Wow! Amazing work!',
                        style: CustomTextStyle.ts12reg,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        //Time & No.
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Time
            Text(
              '10:54 PM',
              style: CustomTextStyle.tp12med,
            ),
            //No.
            ImageIcon(
              AssetImage('assets/image/msgunseen.png'),
              color: textSecondary,
            ),
          ],
        ),
      ],
    );
  }
}

// Title with icon and dropdown
class msgCategory extends StatelessWidget {
  const msgCategory({super.key, required this.category, required this.iconCat});
  final String category;
  final AssetImage iconCat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //icon
              ImageIcon(
                iconCat,
                color: primaryColor,
              ),
              SizedBox(
                width: 12,
              ),
              //text
              Text(
                category,
                style: CustomTextStyle.pc16med,
              ),
            ],
          ),
          ////dropdown
          Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: primaryColor10,
                //border: Border.all(width: 1, color: blackColor05),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: ImageIcon(
                AssetImage(
                  'assets/image/arrow_up.png',
                ),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Title with icon and dropdown unseen
class msgCategoryUnseen extends StatelessWidget {
  const msgCategoryUnseen(
      {super.key, required this.category, required this.iconCat});
  final String category;
  final AssetImage iconCat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //icon
              ImageIcon(
                iconCat,
                color: textSecondary,
              ),
              SizedBox(
                width: 12,
              ),
              //text
              Text(
                category,
                style: CustomTextStyle.ts16med,
              ),
            ],
          ),
          ////dropdown
          Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: textSecondary10,
                //border: Border.all(width: 1, color: blackColor05),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: ImageIcon(
                AssetImage(
                  'assets/image/arrow_down.png',
                ),
                color: textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
