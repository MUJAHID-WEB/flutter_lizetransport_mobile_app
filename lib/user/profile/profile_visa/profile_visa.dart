import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';

class ProfileVisa extends StatefulWidget {
  const ProfileVisa({super.key});

  @override
  State<ProfileVisa> createState() => _ProfileVisaState();
}

class _ProfileVisaState extends State<ProfileVisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            //
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                //creator
                PaidVarTitle(
                  id: 'Togo',
                  date: '23/08/2022 -> 30/08/2022',
                  btntext: 'Valid',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Type',
                        data: 'Diplomatique',
                      ),
                      TableC(
                        heading: 'Number',
                        data: '48982244',
                      ),
                      TableW(
                        heading: 'First Name',
                        data: 'John',
                      ),
                      TableC(
                        heading: 'Middle Name',
                        data: 'Goza',
                      ),
                      TableW(
                        heading: 'Last Name',
                        data: 'Doe',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
            Column(
              children: [
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(),
                ),
                //creator
                UnpExTitle(
                  id: 'Togo',
                  date: '23/08/2022 -> 30/08/2022',
                  btntext: 'Expired',
                ),

                //Table
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      TableW(
                        heading: 'Type',
                        data: 'Diplomatique',
                      ),
                      TableC(
                        heading: 'Number',
                        data: '48982244',
                      ),
                      TableW(
                        heading: 'First Name',
                        data: 'John',
                      ),
                      TableC(
                        heading: 'Middle Name',
                        data: 'Goza',
                      ),
                      TableW(
                        heading: 'Last Name',
                        data: 'Doe',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
