import 'package:flutter/material.dart';
import 'package:lize/admin/plane_admin/plane_details.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/filter.dart';
import '../../common/text_style.dart';
import 'add_plane_details.dart';

class PrivateJetAdmin extends StatefulWidget {
  const PrivateJetAdmin({super.key});

  @override
  State<PrivateJetAdmin> createState() => _PrivateJetAdminState();
}

class _PrivateJetAdminState extends State<PrivateJetAdmin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Planes',
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterHead(title: 'Planes'),
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
                    text: 'Private Jet',
                  ),
                  Tab(
                    text: 'Helicopters',
                  ),
                  Tab(
                    text: 'Cargo',
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
                  PrivateJet(),
                  Helicopter(),
                  Cargo(),
                ],
                controller: _tabController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Divider(),
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

//
class PlaneBookAdmin extends StatelessWidget {
  const PlaneBookAdmin(
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
                    BookNow(
                      btnText: 'Edit',
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

//
class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
    );
  }
}

//Private Jet
class PrivateJet extends StatelessWidget {
  const PrivateJet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                  child: PlaneDetailsAdmin(),
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
                        PlaneBookAdmin(
                          imagePlane: AssetImage("assets/image/plane01.jpg"),
                          model: 'BE350',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPlaneDetails()),
                            );
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
                  ),
                ),
                //Additinal Information
                AdditionalInfo(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(),
                ),
              ],
            ),
          ),

          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane02.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),

          //Additinal Information
          AdditionalInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane03.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),
          //Additinal Information
          AdditionalInfo(),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: AddButton335(
              btnText: 'Add New Plane',
              onPressed: () {
                //
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        //overflow: Overflow.visible,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                            right: 0.0,
                            top: 0.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.close,
                                  color: textSecondary,
                                ),
                                backgroundColor: cardColor,
                              ),
                            ),
                          ),
                          //
                          Container(
                            height: 298,
                            width: double.infinity,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.horizontal(
                            //     left: Radius.circular(20),
                            //     right: Radius.circular(20),
                            //   ),
                            // ),
                            alignment: Alignment.center,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Column(
                                  children: [
                                    Image.asset('assets/image/confirm.jpg'),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 12),
                                      child: Text(
                                        'Your Order has been Confirmed!',
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyle.tp18semi,
                                      ),
                                    ),
                                    Text(
                                      'Thank you for your adding Amenities to your Trip/Reservation.',
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyle.tp14med,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          //
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Helicopter
class Helicopter extends StatelessWidget {
  const Helicopter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane01.jpg"),
                    model: 'BE350',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),
          //Additinal Information
          AdditionalInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),

          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane02.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),

          //Additinal Information
          AdditionalInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane03.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),
          //Additinal Information
          AdditionalInfo(),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: AddButton335(
              btnText: 'Add New Plane',
              onPressed: () {
                //
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        //overflow: Overflow.visible,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                            right: 0.0,
                            top: 0.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.close,
                                  color: textSecondary,
                                ),
                                backgroundColor: cardColor,
                              ),
                            ),
                          ),
                          //
                          Container(
                            height: 298,
                            width: double.infinity,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.horizontal(
                            //     left: Radius.circular(20),
                            //     right: Radius.circular(20),
                            //   ),
                            // ),
                            alignment: Alignment.center,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Column(
                                  children: [
                                    Image.asset('assets/image/confirm.jpg'),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 12),
                                      child: Text(
                                        'Your Order has been Confirmed!',
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyle.tp18semi,
                                      ),
                                    ),
                                    Text(
                                      'Thank you for your adding Amenities to your Trip/Reservation.',
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyle.tp14med,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          //
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//Cargo

class Cargo extends StatelessWidget {
  const Cargo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane01.jpg"),
                    model: 'BE350',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),
          //Additinal Information
          AdditionalInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),

          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane02.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),

          //Additinal Information
          AdditionalInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
          //
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
                  PlaneBookAdmin(
                    imagePlane: AssetImage("assets/image/plane03.jpg"),
                    model: '8X',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPlaneDetails()),
                      );
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
            ),
          ),
          //Additinal Information
          AdditionalInfo(),
          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: AddButton335(
              btnText: 'Add New Plane',
              onPressed: () {
                //
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        //overflow: Overflow.visible,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                            right: 0.0,
                            top: 0.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.close,
                                  color: textSecondary,
                                ),
                                backgroundColor: cardColor,
                              ),
                            ),
                          ),
                          //
                          Container(
                            height: 298,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Column(
                                  children: [
                                    Image.asset('assets/image/confirm.jpg'),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 12),
                                      child: Text(
                                        'Your Order has been Confirmed!',
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyle.tp18semi,
                                      ),
                                    ),
                                    Text(
                                      'Thank you for your adding Amenities to your Reservation.',
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyle.tp14med,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          //
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
