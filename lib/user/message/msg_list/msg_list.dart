import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';
import '../../../common/text_style.dart';

class MsgListUser extends StatefulWidget {
  const MsgListUser({super.key});

  @override
  State<MsgListUser> createState() => _MsgListUserState();
}

class _MsgListUserState extends State<MsgListUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Messages',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: cardColor,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //search
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //text
                          Text(
                            'Search here',
                            style: CustomTextStyle.ts16med,
                          ),
                          //icon
                          ImageIcon(
                            AssetImage('assets/image/search.png'),
                            color: textPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //unpinned msg
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        //icon
                        ImageIcon(
                          AssetImage('assets/image/pin.png'),
                          color: textSecondary,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        //text
                        Text(
                          'Pinned Messages',
                          style: CustomTextStyle.ts12med,
                        ),
                      ],
                    ),
                  ),
                  //msg
                  MsgTyping(),
                  MsgSeen(),
                  MsgUnSeen(),
                  //All msg
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        //icon
                        ImageIcon(
                          AssetImage('assets/image/msg.png'),
                          color: textSecondary,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        //text
                        Text(
                          'All messages',
                          style: CustomTextStyle.ts12med,
                        ),
                      ],
                    ),
                  ),
                  //msg
                  MsgTyping(),
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
                color: primaryColor,
                border: Border.all(width: 2, color: Color(0xFFEDF2F6)),
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
      padding: const EdgeInsets.symmetric(vertical: 25),
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
