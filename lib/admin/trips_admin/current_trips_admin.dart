import 'package:flutter/material.dart';
import 'package:lize/admin/trips_admin/past_trips_admin.dart';
import 'package:lize/admin/trips_admin/schedule_trips_admin.dart';
import 'package:lize/common/appbar.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/filter.dart';
import '../../common/text_style.dart';
import 'cancelled_trips_admin.dart';
import 'ct_details_admin.dart';

class CurrentTripAdmin extends StatefulWidget {
  const CurrentTripAdmin({super.key});

  @override
  State<CurrentTripAdmin> createState() => _CurrentTripAdminState();
}

class _CurrentTripAdminState extends State<CurrentTripAdmin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Trips',
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: textSecondary,
                unselectedLabelStyle: CustomTextStyle.ts14reg,
                labelColor: primaryColor,
                labelStyle: CustomTextStyle.pc14semi,
                tabs: [
                  Tab(
                    text: 'Current Trips',
                  ),
                  Tab(
                    text: 'Schedule Trips',
                  ),
                  Tab(
                    text: 'Past Trips',
                  ),
                  Tab(
                    text: 'Cancelled Trips',
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: cardColor,
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  CtAdmin(),
                  ScheduleTripAdmin(),
                  PastTripAdmin(),
                  CancelTripAdmin(),
                ],
                controller: _tabController,
              ),
            ),

            //
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

// Current Trips
class CtAdmin extends StatelessWidget {
  const CtAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //
            Divider(),

            FilterHead(title: 'Current Trips'),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            //Started
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 500),
                    child: CtDetailsAdmin(),
                  ),
                );
              },
              child: Column(
                children: [
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
                          heading: 'Reservation',
                          data: 'R2902',
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
                        TableW(
                          heading: 'Cost',
                          data: '-',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Started
            Column(
              children: [
                //
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
                        heading: 'Reservation',
                        data: 'R2902',
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
                      TableW(
                        heading: 'Cost',
                        data: '-',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Started
            Column(
              children: [
                //
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
                        heading: 'Reservation',
                        data: 'R2902',
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
                      TableW(
                        heading: 'Cost',
                        data: '-',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Started
            Column(
              children: [
                //
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
                        heading: 'Reservation',
                        data: 'R2902',
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
                      TableW(
                        heading: 'Cost',
                        data: '-',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
