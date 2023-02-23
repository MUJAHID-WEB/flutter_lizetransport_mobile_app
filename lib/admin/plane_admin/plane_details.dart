import 'package:flutter/material.dart';
import 'package:lize/admin/plane_admin/plane_current_trips.dart';
import 'package:lize/admin/plane_admin/plane_past_trip.dart';
import 'package:lize/admin/plane_admin/plane_reservation.dart';
import 'package:lize/admin/plane_admin/private_jet_admin.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'add_plane_details.dart';

class PlaneDetailsAdmin extends StatefulWidget {
  const PlaneDetailsAdmin({super.key});

  @override
  State<PlaneDetailsAdmin> createState() => _PlaneDetailsAdminState();
}

class _PlaneDetailsAdminState extends State<PlaneDetailsAdmin>
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
      appBar: AppBarAdminBack(
        title: 'Airbus A319 LTI-LBZ',
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
                    text: 'Plane Details',
                  ),
                  Tab(
                    text: 'Reservations',
                  ),
                  Tab(
                    text: 'Current Trips',
                  ),
                  Tab(
                    text: 'Past Trips',
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: cardColor,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PlaneDetails(),
                  PlaneReservationAdmin(),
                  PlaneCtripAdmin(),
                  PlanePastTripAdmin(),
                ],
                controller: _tabController,
              ),
            ),
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

//PlaneDetails
class PlaneDetails extends StatelessWidget {
  const PlaneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(
                // thickness: 2,
                // color: blackColor,
                ),
          ),
          Column(
            children: [
              PlaneAvailable(
                imagePlane: AssetImage("assets/image/plane01.jpg"),
                model: 'BE350',
                onPressed: () {
                  //
                },
              ),

              //Table
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TableW(
                      heading: 'LTI Name',
                      data: 'Airbus A319 LTI-LBZ',
                    ),
                    TableC(
                      heading: 'Manufacturer',
                      data: 'Airbus',
                    ),
                    TableW(
                      heading: 'Model',
                      data: 'A319',
                    ),
                    TableC(
                      heading: 'LTI Plane Number',
                      data: 'LTI-J3209911',
                    ),
                    TableW(
                      heading: 'Wingspan',
                      data: '26,2128M',
                    ),
                    TableC(
                      heading: 'Height',
                      data: '7,9248M',
                    ),
                    TableW(
                      heading: 'Length',
                      data: '14.224M',
                    ),
                    TableC(
                      heading: 'Fuel capacity',
                      data: '3611 Lbs',
                    ),
                    TableW(
                      heading: 'Max takeoff weight',
                      data: '6804Kgs',
                    ),
                  ],
                ),
              ),
            ],
          ),
          // ),

          //Additinal Information
          AdditionalInfo(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: EditButton330(
              btnText: 'Edit',
              onPressed: () {
                //AddPlaneDetails
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 500),
                    child: AddPlaneDetails(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//
class PlaneAvailable extends StatelessWidget {
  const PlaneAvailable(
      {super.key,
      required this.onPressed,
      required this.imagePlane,
      required this.model});
  final void Function()? onPressed;
  final AssetImage imagePlane;
  final String model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 228,
          width: double.infinity,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.horizontal(
            //   left: Radius.circular(10),
            //   right: Radius.circular(10),
            // ),
            image: DecorationImage(
              image: imagePlane,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 128, 0, 0),
            child: Container(
              height: 128,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  blackColor00,
                  blackColor,
                ],
              )),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 20, 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Model
                          Text(
                            'Model',
                            style: CustomTextStyle.cc18semi,
                          ),
                          //No.
                          Text(
                            model,
                            style: CustomTextStyle.cc14med,
                          ),
                        ],
                      ),
                    ),
                    //Book Now
                    AvailableBtn(
                      btnText: 'Available',
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
