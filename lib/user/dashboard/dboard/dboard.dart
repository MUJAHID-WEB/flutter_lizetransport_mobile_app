import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../reservation/reservation.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({super.key});

  @override
  State<DashboardUser> createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'Dashboard',
      ),
      body: ListView(children: [
        Container(
            color: bgColor,
            //height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                //Reservation
                ReservationCard(),

                //Current Trips
                CurrentTripsCard(),
                //Latest News
                NewsCard(),
                //Social Media Card
                MediaCard(),
                SizedBox(
                  height: 20,
                )
              ],
            )),
      ]),
    );
  }
}

//Make your Reservation
class ReservationCard extends StatelessWidget {
  const ReservationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            height: 111,
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardColor,
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/db_banner.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(34, 23, 33, 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Text
                  Container(
                    height: 60,
                    width: 242,
                    child: Text.rich(TextSpan(
                        text: 'Make your ',
                        style: CustomTextStyle.sc20bold,
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Reservation Now.',
                            style: CustomTextStyle.pc20semi,
                          )
                        ])),
                  ),

                  Column(
                    children: [
                      //Icon
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reservation()),
                            );
                          },
                          icon: ImageIcon(
                            AssetImage(
                              'assets/image/plane.png',
                            ),
                            color: cardColor,
                          ),
                        ),
                      ),
                      //title
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Start',
                        style: CustomTextStyle.pc14med,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Current Trips

class CurrentTripsCard extends StatelessWidget {
  const CurrentTripsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 253, 0),
            child: Text(
              'Current Trips',
              style: CustomTextStyle.tp16semi,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(),
          ),
          //creator
          StartedTitle(
            id: 'Moses Dabo',
            date: '23/08/2022 -> 30/08/2022',
            btntext: 'Started',
          ),

          //Table
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TableW(
                  heading: 'Trip',
                  data: 'L9021',
                ),
                TableC(
                  heading: 'Passengers',
                  data: '06',
                ),
                TableW(
                  heading: 'Aircraft',
                  data: 'A319',
                ),
                TableC(
                  heading: 'City',
                  data: 'Abidjan',
                ),
                TableWDblue(
                  heading: 'Cost',
                  data: '25,000.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Latest News
class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        //height: 445,
        width: double.infinity,
        color: cardColor,
        child: Column(
          children: [
            //Heading
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //title
                  Text(
                    'Latest News',
                    style: CustomTextStyle.sc16semi,
                  ),
                  //arrow btn
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        //alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: cardColor,
                            border: Border.all(width: 1, color: blackColor05),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
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
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(width: 1, color: blackColor05),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
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
            ),
            //News slide horizontally
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  //banner
                  Image.asset(
                    'assets/image/news_db.jpg',
                  ),
                  //News title
                  Text(
                    'Press Release',
                    style: CustomTextStyle.tp16bold,
                    textAlign: TextAlign.start,
                  ),
                  //news
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                          style: CustomTextStyle.ts12reg,
                        ),
                      ),
                      //date
                      Text(
                        '12 August 2022',
                        style: CustomTextStyle.ts12reg,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 19,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Social Media
class MediaCard extends StatelessWidget {
  const MediaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 445,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/image/social_db.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: blackColor50,
          child: Column(
            children: [
              //Heading
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //title
                    Text(
                      'Social Media',
                      style: CustomTextStyle.cc16semi,
                    ),
                    //arrow btn
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          //alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(width: 1, color: cardColor10),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                AssetImage(
                                  'assets/image/arrow_back.png',
                                ),
                                color: cardColor50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: cardColor10,
                              border: Border.all(width: 1, color: blackColor05),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
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
              ),
              //News slide horizontally
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 114, 30, 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //News title
                    Text(
                      'Press Release',
                      style: CustomTextStyle.cc16bold,
                    ),
                    //news
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        style: CustomTextStyle.cc12reg,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        //
        );
  }
}
