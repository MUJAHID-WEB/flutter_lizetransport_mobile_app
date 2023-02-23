import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/filter.dart';
import '../../common/text_style.dart';
import 'amenities_add.dart';
import 'amenities_details.dart';

class AmenitiesAdmin extends StatefulWidget {
  const AmenitiesAdmin({super.key});

  @override
  State<AmenitiesAdmin> createState() => _AmenitiesAdminState();
}

class _AmenitiesAdminState extends State<AmenitiesAdmin>
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
        title: 'Amenities',
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterHead(title: 'Amenities'),
            Divider(),

            //
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
                    text: 'Drinks',
                  ),
                  Tab(
                    text: 'Food',
                  ),
                  Tab(
                    text: 'Technologies',
                  ),
                  Tab(
                    text: 'Flowers',
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
                  Drinks(),
                  Drinks(),
                  Drinks(),
                  Drinks(),
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

//Drinks
class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                  child: AmenitiesDetailsAdmin(),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: textSecondary.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(2, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        AmenitiesAvailable(
                          imagePlane:
                              AssetImage("assets/image/amenities01.jpg"),
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
                          padding: const EdgeInsets.all(20.0),
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
                      ],
                    ),
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
          ),

          //
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                  child: AmenitiesDetailsAdmin(),
                ),
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: textSecondary.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(2, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        AmenitiesSoldOut(
                          imagePlane:
                              AssetImage("assets/image/amenities01.jpg"),
                          model: 'Champagne',
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
                          padding: const EdgeInsets.all(20.0),
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: AddButton335(
              btnText: 'Add New Amenites',
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
    );
  }
}

//Available
class AmenitiesAvailable extends StatelessWidget {
  const AmenitiesAvailable(
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
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //heading
              Text(
                'Details',
                style: CustomTextStyle.tp16semi,
              ),
              //dropdown
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: textPrimary10,
                    //border: Border.all(width: 1, color: blackColor05),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: ImageIcon(
                    AssetImage(
                      'assets/image/arrow_up.png',
                    ),
                    color: textPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}

//SOldOut
class AmenitiesSoldOut extends StatelessWidget {
  const AmenitiesSoldOut(
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
                    SoldOut(
                      btnText: 'Sold Out',
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //heading
              Text(
                'Details',
                style: CustomTextStyle.tp16semi,
              ),
              //dropdown
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: textPrimary10,
                    //border: Border.all(width: 1, color: blackColor05),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: ImageIcon(
                    AssetImage(
                      'assets/image/arrow_up.png',
                    ),
                    color: textPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
