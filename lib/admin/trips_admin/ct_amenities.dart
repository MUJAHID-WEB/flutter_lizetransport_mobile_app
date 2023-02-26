import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import 'new_amenities.dart';

class CtAmenitiesAdmin extends StatefulWidget {
  const CtAmenitiesAdmin({super.key});

  @override
  State<CtAmenitiesAdmin> createState() => _CtAmenitiesAdminState();
}

class _CtAmenitiesAdminState extends State<CtAmenitiesAdmin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: [
          //New Passenger

          Column(
            children: [
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              //creator
              NpassangerTitle(
                id: 'Amenities',
                btntext: 'New Amenities',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 500),
                      child: CtAmenitiesNew(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
