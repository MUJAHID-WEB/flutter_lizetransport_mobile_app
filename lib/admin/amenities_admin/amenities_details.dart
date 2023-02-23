import 'package:flutter/material.dart';
import 'package:lize/admin/amenities_admin/amenities_past_trips.dart';
import 'package:lize/admin/amenities_admin/amenities_reservation.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'amenities_add.dart';
import 'amenities_current_trips.dart';
import 'amenities_drinks.dart';
import 'amenities_inventorydart.dart';
import 'amenities_orders.dart';

class AmenitiesDetailsAdmin extends StatefulWidget {
  const AmenitiesDetailsAdmin({super.key});

  @override
  State<AmenitiesDetailsAdmin> createState() => _AmenitiesDetailsAdminState();
}

class _AmenitiesDetailsAdminState extends State<AmenitiesDetailsAdmin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'Barbera/LTI-90',
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
                    text: 'Amenity Details',
                  ),
                  Tab(
                    text: 'Orders',
                  ),
                  Tab(
                    text: 'Inventory',
                  ),
                  Tab(
                    text: 'Reservations',
                  ),
                  Tab(
                    text: 'Current Trips',
                  ),
                  Tab(
                    text: 'Past Trips',
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
                  AmenitiesDetails(),
                  AmenitiesOrderAdmin(),
                  AmenitiesInventory(),
                  AmenitiesReservation(),
                  AmenitiesCtripAdmin(),
                  AmenitiesPastTripAdmin(),
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

//AmenitiesDetails
class AmenitiesDetails extends StatelessWidget {
  const AmenitiesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                child: Column(
                  children: [
                    AmenitiesAvailableDetails(
                      imagePlane: AssetImage("assets/image/amenities01.jpg"),
                      model: 'Wine',
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
                            heading: 'Type',
                            data: 'Drinks',
                          ),
                          TableC(
                            heading: 'Name',
                            data: 'Barbera',
                          ),
                          TableW(
                            heading: 'LTI Name',
                            data: 'Barbera/LTI-90',
                          ),
                          TableC(
                            heading: 'LReference No.',
                            data: 'A9901201',
                          ),
                          TableW(
                            heading: 'Price',
                            data: '260.000',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: tRowBgColor,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Overview', style: CustomTextStyle.ts12reg),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it.',
                                  style: CustomTextStyle.tp12semi),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Additional Information',
                            style: CustomTextStyle.tp14semi,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 112,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: borderColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: EditButton330(
                  btnText: 'Edit',
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 500),
                        child: AmenitiesAdd(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Available
class AmenitiesAvailableDetails extends StatelessWidget {
  const AmenitiesAvailableDetails(
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
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
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
                            'Type',
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
