import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/colors.dart';
import '../../common/bottom_nav_bar.dart';
import '../auth_user/sign_in/signin.dart';
import '../dashboard/dboard/dboard.dart';

class OnboardUser03 extends StatefulWidget {
  const OnboardUser03({super.key});

  @override
  State<OnboardUser03> createState() => _OnboardUser03State();
}

class _OnboardUser03State extends State<OnboardUser03> {
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
                  "assets/image/onboard03.jpg",
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          //card
          Positioned(
            top: 430,
            child: Container(
              //height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: cardColor,
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
                          text: '03',
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
                        width: 351,
                        child: Text.rich(
                          TextSpan(
                            text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
                              percent: 1.0,
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
                                    borderRadius: BorderRadius.circular(5)),
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
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LogInUser(),
                                        ),
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
      ),
    );
  }
}
