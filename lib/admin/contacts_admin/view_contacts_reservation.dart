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
import 'new_contacts.dart';

class ContactReservationAdmin extends StatefulWidget {
  const ContactReservationAdmin({super.key});

  @override
  State<ContactReservationAdmin> createState() =>
      _ContactReservationAdminState();
}

class _ContactReservationAdminState extends State<ContactReservationAdmin>
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
      appBar: AppBarAdminBack(
        title: 'View Contacts',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactInfo(),
              ConInfo(
                icon: AssetImage('assets/image/call.png'),
                info: '(+213) 415 7850',
              ),
              ConInfo(
                icon: AssetImage('assets/image/envelopicon.png'),
                info: 'johndoe@gmail.com',
              ),
              //
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
                      text: 'Reservation',
                    ),
                    Tab(
                      text: 'Trip',
                    ),
                    Tab(
                      text: 'Plane',
                    )
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
                    ConReservation(),
                    ContactTripAdmin(),
                    ContactPlaneAdmin(),
                  ],
                  controller: _tabController,
                ),
              ),
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
class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
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
                          'Mr. John Doe',
                          style: CustomTextStyle.tp20semi,
                        ),
                        //Date
                        Text(
                          'lize transport INTL',
                          style: CustomTextStyle.ts14reg,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //edit
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: primaryColor,
                    //border: Border.all(width: 1, color: blackColor05),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                          child: ContactsNew(),
                        ),
                      );
                    },
                    icon: ImageIcon(
                      AssetImage(
                        'assets/image/edit_admin.png',
                      ),
                      color: cardColor,
                    ),
                  ),
                ),
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
class ConInfo extends StatelessWidget {
  const ConInfo({super.key, required this.icon, required this.info});
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

//Reservation
class ConReservation extends StatelessWidget {
  const ConReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Unpaid
          Column(
            children: [
              //
              SizedBox(
                height: 10,
              ),
              //creator
              RcvdTitle(
                id: 'Moses Dabo',
                date: '23/08/2022 -> 30/08/2022',
                btntext: 'Received',
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
                    //
                    // Add New Plane
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
                              child: EditResAdmin(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          //Paid
          Column(
            children: [
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              //creator
              AssignTitle(
                id: 'Moses Dabo',
                date: '23/08/2022 -> 30/08/2022',
                btntext: 'Assigned',
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
                      data: '2,000,000',
                    ),
                    // Add New Plane
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
                              child: EditResAdmin(),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
