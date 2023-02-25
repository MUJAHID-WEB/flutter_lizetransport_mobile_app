import 'package:flutter/material.dart';
import 'package:lize/admin/team_admin/team_lt_intl.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'new_team_details.dart';

class TeamAdmin extends StatefulWidget {
  const TeamAdmin({super.key});

  @override
  State<TeamAdmin> createState() => _TeamAdminState();
}

class _TeamAdminState extends State<TeamAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Team',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  // Team
                  TeamAdminDetails(),
                  TeamAdminDetails(),
                  TeamAdminDetails(),
                  TeamAdminDetails(),
                ],
              ),
            ),
            //
            // Add New Plane
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: AddButton335(
                btnText: 'New Team',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 500),
                      child: TeamNewAdmin(),
                    ),
                  );
                },
              ),
            ),
          ])),
    );
  }
}

//Team
class TeamAdminDetails extends StatelessWidget {
  const TeamAdminDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 500),
                child: TeamLtlAdmin(),
              ),
            );
          },
          child: Row(
            children: [
              //avatar
              ClipOval(
                child: Image.asset(
                  'assets/image/avatar_bird.jpg',
                  height: 80,
                  width: 80,
                ),
              ),

              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    'Lize transport INTL',
                    style: CustomTextStyle.tp16bold,
                  ),
                  //subtitle
                  Text(
                    'since Mar 6, 2020',
                    style: CustomTextStyle.ts12reg,
                  ),
                  //team group
                  Row(
                    children: [
                      //group image
                      Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.loose,
                        children: <Widget>[
                          ClipOval(
                            child: Image.asset(
                              'assets/image/avatar_bird.jpg',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Positioned(
                            left: 15,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/avatar_bird.jpg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/avatar_bird.jpg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 45,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/avatar_bird.jpg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/avatar_bird.jpg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 75,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/avatar_bird.jpg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 7,
                            left: 110,
                            child: ClipOval(
                              child:
                                  //additional number
                                  Text(
                                '+5',
                                style: CustomTextStyle.ts12reg,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditButton330(
            btnText: 'Edit',
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                  child: TeamNewAdmin(),
                ),
              );
            },
          ),
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
