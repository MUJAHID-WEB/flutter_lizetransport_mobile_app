import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import '../amenities_admin/amenities_drinks.dart';

class CtPlaneAdmin extends StatefulWidget {
  const CtPlaneAdmin({super.key});

  @override
  State<CtPlaneAdmin> createState() => _CtPlaneAdminState();
}

class _CtPlaneAdminState extends State<CtPlaneAdmin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(
                // thickness: 2,
                // color: blackColor,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                PlaneAvailable(
                  imagePlane: AssetImage("assets/image/plane01.jpg"),
                  model: 'BE350',
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
          // ),

          //Additinal Information
          AdditionalInfo(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

//
class PlaneAvailable extends StatelessWidget {
  const PlaneAvailable(
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
                    // AvailableBtn(
                    //   btnText: 'Available',
                    //   onPressed: onPressed,
                    // ),
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
