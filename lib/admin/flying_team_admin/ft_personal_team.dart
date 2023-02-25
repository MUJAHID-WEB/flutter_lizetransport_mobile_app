import 'package:flutter/material.dart';
import 'package:lize/admin/contacts_admin/view_contacts_plane.dart';
import 'package:lize/admin/contacts_admin/view_contacts_trip.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import '../reservation_admin/edit_reservation.dart';
import 'ft_employee_team.dart';
import 'ft_planes.dart';
import 'ft_reservation.dart';
import 'ft_trips.dart';

class FlyingTeamPersonal extends StatefulWidget {
  const FlyingTeamPersonal({super.key});

  @override
  State<FlyingTeamPersonal> createState() => _FlyingTeamPersonalState();
}

class _FlyingTeamPersonalState extends State<FlyingTeamPersonal>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'John Ngolo Doe',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
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
                      text: 'Personal',
                    ),
                    Tab(
                      text: 'Employment',
                    ),
                    Tab(
                      text: 'Planes',
                    ),
                    Tab(
                      text: 'Reservation',
                    ),
                    Tab(
                      text: 'Trips',
                    ),
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: cardColor,
                ),
              ),
              Divider(),
              Expanded(
                child: TabBarView(
                  children: [
                    FTpersonalAdmin(),
                    FtEmployeeAdmin(),
                    FtPlanesAdmin(),
                    FtReservationAdmin(),
                    FtTripAdmin(),
                  ],
                  controller: _tabController,
                ),
              ),
              //
            ],
          )),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

//Info Heading
class FTinfoHead extends StatelessWidget {
  const FTinfoHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Avatar
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
                          'John Ngolo Doe',
                          style: CustomTextStyle.tp20semi,
                        ),
                        //Date
                        Row(
                          children: [
                            Text(
                              '03/12/1980',
                              style: CustomTextStyle.ts14reg,
                            ),
                            //
                            ImageIcon(
                              AssetImage('assets/image/available.png'),
                              color: paidBtn,
                            ),
                            Text(
                              'Available',
                              style: CustomTextStyle.paidbtn12med,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          //
        ],
      ),
    );
  }
}

//Info Details
class FtInfo extends StatelessWidget {
  const FtInfo({super.key, required this.icon, required this.info});
  final AssetImage icon;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
      child: Row(
        children: [
          //Icon
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: primaryColor,
                //border: Border.all(width: 1, color: blackColor05),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: IconButton(
                onPressed: () {
                  //
                },
                icon: ImageIcon(
                  icon,
                  color: cardColor,
                ),
              ),
            ),
          ),
          //Detail
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  info,
                  style: CustomTextStyle.pc16med,
                ),
                SizedBox(
                  width: 10,
                ),
                ImageIcon(
                  AssetImage('assets/image/copy.png'),
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
class FTpersonalAdmin extends StatelessWidget {
  const FTpersonalAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FTinfoHead(),
          FtInfo(
            icon: AssetImage('assets/image/call.png'),
            info: '(+213) 415 7850',
          ),
          FtInfo(
            icon: AssetImage('assets/image/envelopicon.png'),
            info: 'johndoe@gmail.com',
          ),
          //
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: CustomTextStyle.tp16semi,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lome, Togo - 121100',
                  style: CustomTextStyle.ts14reg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
