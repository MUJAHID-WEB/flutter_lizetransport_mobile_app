import 'package:flutter/material.dart';
import 'package:lize/user/onboarding/onboard02.dart';
import 'package:percent_indicator/percent_indicator.dart';
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
      body: Stack(
        children: [
          //Banner Image
          Container(
            height: MediaQuery.of(context).size.height,
            //width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/onboard01.jpg",
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),

          //card
          Positioned(
            top: 440,
            child: Container(
              //height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //color: cardColor,
              decoration: BoxDecoration(
                  color: cardColor,
                  //border: Border.all(width: 1, color: blackColor05),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Page Number
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text.rich(TextSpan(
                          text: '01',
                          style: CustomTextStyle.tp18bold,
                          children: <InlineSpan>[
                            TextSpan(
                              text: '/03',
                              style: CustomTextStyle.ts18bold,
                            )
                          ])),
                    ),

                    //slogan
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 108,
                        width: 318,
                        child: Text.rich(
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
                      ),
                    ),

                    //description
                    SizedBox(
                      height: 46,
                      width: 287,
                      child: Text(
                        'All type of plans are available as per your budget and accommodation will be free.',
                        style: CustomTextStyle.ts14reg,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //progress
                          SizedBox(
                            height: 6,
                            width: 150,
                            child: LinearPercentIndicator(
                              animation: true,
                              animationDuration: 2500,
                              width: 150.0,
                              lineHeight: 6.0,
                              percent: 0.33,
                              //linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: primaryColor,
                              backgroundColor: textSecondary10,
                              barRadius: Radius.circular(5),
                            ),
                          ),

                          //button
                          SizedBox(
                            height: 60,
                            width: 180,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OnboardUser02()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Started',
                                    style: CustomTextStyle.cc16semi,
                                  ),
                                  ImageIcon(
                                    AssetImage(
                                      'assets/image/onbtn.png',
                                    ),
                                    color: cardColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //
          )
        ],
      ),
    );
  }
}
