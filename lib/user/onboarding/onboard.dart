import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/colors.dart';

class OnboardUser extends StatefulWidget {
  const OnboardUser({super.key});

  @override
  State<OnboardUser> createState() => _OnboardUserState();
}

class _OnboardUserState extends State<OnboardUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            color: bgColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.fill,
            //     image: AssetImage('assets/image/onboard01.jpg'),
            //   ),
            // ),
            child: Stack(
              children: [
                //Banner Image
                Image.asset(
                  'assets/image/onboard01.jpg',
                  fit: BoxFit.fill,
                ),

                //card
                Positioned(
                  top: 450,
                  child: Container(
                    //height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          //Page Number
                          Text.rich(TextSpan(
                              text: '01',
                              style: CustomTextStyle.tp18bold,
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '/03',
                                  style: CustomTextStyle.ts18bold,
                                )
                              ])),

                          //slogan
                          Text.rich(
                            TextSpan(
                              text: 'Let\'s Make your ',
                              style: CustomTextStyle.tp24bold,
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'business trips ',
                                  style: CustomTextStyle.pc24bold,
                                ),
                                TextSpan(
                                  text: 'with more comfort & easier.',
                                  style: CustomTextStyle.tp24bold,
                                )
                              ],
                            ),
                            maxLines: 3,
                          ),
                          //description
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'All type of plans are available as per your budget and accommodation will be free.',
                              style: CustomTextStyle.ts14reg,
                            ),
                          ),

                          Row(
                            children: [
                              //progress
                              //button
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'Get Started',
                                        style: CustomTextStyle.ts12reg,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          'assets/image/onbtn.png',
                                        ),
                                        color: textSecondary50,
                                      ),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                )
              ],
            )),
      ]),
    );
  }
}
