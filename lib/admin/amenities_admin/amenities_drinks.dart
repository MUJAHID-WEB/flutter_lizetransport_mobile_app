import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class AmenitiesAdmin extends StatefulWidget {
  const AmenitiesAdmin({super.key});

  @override
  State<AmenitiesAdmin> createState() => _AmenitiesAdminState();
}

class _AmenitiesAdminState extends State<AmenitiesAdmin> {
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
          child: ListView(children: [
            Column(
              children: [
                //Unpaid
                Column(
                  children: [
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: EditButton330(
                    btnText: 'Edit',
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: EditButton330(
                    btnText: 'Edit',
                  ),
                ),

                // Add New Amenities
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: AddButton335(
                    btnText: 'Add new Amenities',
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
