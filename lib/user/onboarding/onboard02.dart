import 'package:flutter/material.dart';
import 'package:lize/user/onboarding/onboard03.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/colors.dart';

class OnboardUser02 extends StatefulWidget {
  const OnboardUser02({super.key});

  @override
  State<OnboardUser02> createState() => _OnboardUser02State();
}

class _OnboardUser02State extends State<OnboardUser02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            color: bgColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                //Banner Image
                Image.asset(
                  'assets/image/onboard02.jpg',
                  fit: BoxFit.fill,
                ),

                //card
                Positioned(
                  top: 410,
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
                                text: '02',
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
                                  text:
                                      'Make your Trip now memorable with easy & fast process.',
                                  style: CustomTextStyle.tp24bold,
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
                                    percent: 0.67,
                                    //linearStrokeCap: LinearStrokeCap.roundAll,
                                    progressColor: primaryColor,
                                    backgroundColor: textSecondary10,
                                    barRadius: Radius.circular(5),
                                  ),
                                ),

                                //arrow btn
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      //alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: cardColor,
                                          border: Border.all(
                                              width: 1, color: blackColor05),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: ImageIcon(
                                            AssetImage(
                                              'assets/image/arrow_back.png',
                                            ),
                                            color: textSecondary50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //
                                    Container(
                                      height: 50,
                                      width: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          border: Border.all(
                                              width: 1, color: blackColor05),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const OnboardUser03()),
                                            );
                                          },
                                          icon: ImageIcon(
                                            AssetImage(
                                              'assets/image/arrow_forward.png',
                                            ),
                                            color: cardColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
            )),
      ]),
    );
  }
}
