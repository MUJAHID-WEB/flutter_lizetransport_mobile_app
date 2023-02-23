import 'package:flutter/material.dart';
import 'package:lize/admin/plane_admin/private_jet_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'add_plane_details.dart';

class PlaneChar extends StatefulWidget {
  const PlaneChar({super.key});

  @override
  State<PlaneChar> createState() => _PlaneCharState();
}

class _PlaneCharState extends State<PlaneChar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //progress
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 60,
                  width: 40,
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 2500,
                    radius: 30.0,
                    lineWidth: 10.0,
                    percent: 1.0,
                    center: Text("2/2", style: CustomTextStyle.pc12semi),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: primaryColor,
                    backgroundColor: textSecondary10,
                  ),
                ),
              ),
              //title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plane characteristics',
                    style: CustomTextStyle.pc16semi,
                  ),
                  // Text(
                  //   'Next : plane characteristics',
                  //   style: CustomTextStyle.ts14reg,
                  // ),
                ],
              )
            ],
          ),
        ),
        toolbarHeight: 100,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          //height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                makeInput30(
                  label: "Passengers",
                  hintText: "19",
                ),
                makeInput30(
                  label: "Length",
                  hintText: "14.224M",
                ),
                makeInput30(
                  label: "Wingspan",
                  hintText: "7.653M",
                ),
                makeInput30(
                  label: "Max takeoff weight",
                  hintText: "680Kgs",
                ),
                makeInput30(
                  label: "Fuel Capacity",
                  hintText: "3611 Lbs",
                ),
                makeInput30(
                  label: "Height",
                  hintText: "4.369M",
                ),
                Column(
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
                SizedBox(
                  height: 20,
                ),
                //
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BacknCancelBtn(
                      btnText: 'Back',
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 500),
                            child: AddPlaneDetails(),
                          ),
                        );
                      },
                    ),
                    NextBtn(
                      btnText: "Add",
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 500),
                            child: PrivateJetAdmin(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
