import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';

class TeamAdmin extends StatefulWidget {
  const TeamAdmin({super.key});

  @override
  State<TeamAdmin> createState() => _TeamAdminState();
}

class _TeamAdminState extends State<TeamAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Team',
      ),
      body: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(children: [
            Column(
              children: [
                //

                Column(
                  children: [
                    // Add New Plane
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: EditButton330(
                        btnText: 'Edit',
                      ),
                    )
                  ],
                ),
                //
                Column(
                  children: [
                    // Add New Plane
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: EditButton330(
                        btnText: 'Edit',
                      ),
                    )
                  ],
                ),
                //
                Column(
                  children: [
                    // Add New Plane
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: EditButton330(
                        btnText: 'Edit',
                      ),
                    )
                  ],
                ),
                //
                Column(
                  children: [
                    // Add New Plane
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: EditButton330(
                        btnText: 'Edit',
                      ),
                    )
                  ],
                ),
              ],
            ),
            //
            // Add New Plane
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: AddButton335(
                btnText: 'New Team',
              ),
            )
          ])),
    );
  }
}
