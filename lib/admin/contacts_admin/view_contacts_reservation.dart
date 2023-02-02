import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class ContactReservationAdmin extends StatefulWidget {
  const ContactReservationAdmin({super.key});

  @override
  State<ContactReservationAdmin> createState() =>
      _ContactReservationAdminState();
}

class _ContactReservationAdminState extends State<ContactReservationAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'View Contacts',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //Unpaid
                Column(
                  children: [
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
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
                      padding: EdgeInsets.symmetric(vertical: 20),
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
    );
  }
}
