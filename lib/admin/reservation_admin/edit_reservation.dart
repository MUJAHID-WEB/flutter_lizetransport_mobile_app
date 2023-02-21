import 'package:flutter/material.dart';
import 'package:lize/admin/reservation_admin/reservation_details_admin.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/text_style.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/custom_button.dart';

class EditResAdmin extends StatefulWidget {
  const EditResAdmin({super.key});

  @override
  State<EditResAdmin> createState() => _EditResAdminState();
}

class _EditResAdminState extends State<EditResAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'Edit Reservations',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //Reservation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Text(
                        'Reservation Details',
                        style: CustomTextStyle.pc16semi,
                      ),
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
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
                        ],
                      ),
                    ),
                  ],
                ),
                // Passenger
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        'Passengers',
                        style: CustomTextStyle.pc16semi,
                      ),
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'MIddle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                          //
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(),
                          ),
                          //
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'MIddle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),

                          //
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(),
                          ),
                          //
                          TableW(
                            heading: 'First Name',
                            data: 'Mariam',
                          ),
                          TableC(
                            heading: 'Last Name',
                            data: 'Solei',
                          ),
                          TableW(
                            heading: 'MIddle Name',
                            data: 'Ba',
                          ),
                          TableC(
                            heading: 'Citizenship',
                            data: 'Abidjan',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Pricing

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        'Pricing',
                        style: CustomTextStyle.pc16semi,
                      ),
                    ),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Price',
                            data: '25,000.00',
                          ),
                          TableC(
                            heading: 'Discount',
                            data: '0%',
                          ),
                          TableW(
                            heading: 'Discount Value',
                            data: '0%',
                          ),
                          TableC(
                            heading: 'Discount Code',
                            data: 'LTIDI0029',
                          ),
                          TableWDblue(
                            heading: 'Final Price',
                            data: '25,000.00',
                          ),
                          //

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: EditButton330(
                              btnText: 'Edit',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 500),
                                    child: ReservationDetailsAdmin(),
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
          ]),
        ),
      ),
    );
  }
}
