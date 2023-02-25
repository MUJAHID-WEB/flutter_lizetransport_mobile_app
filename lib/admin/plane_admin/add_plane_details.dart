import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lize/admin/plane_admin/plane_chartacteristics.dart';
import 'package:lize/admin/plane_admin/private_jet_admin.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/custom_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../common/forms.dart';
import '../../common/dropdown.dart';
import '../../common/text_style.dart';

class AddPlaneDetails extends StatefulWidget {
  const AddPlaneDetails({super.key});

  @override
  State<AddPlaneDetails> createState() => _AddPlaneDetailsState();
}

class _AddPlaneDetailsState extends State<AddPlaneDetails> {
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
                    percent: 0.50,
                    center: Text("1/2", style: CustomTextStyle.pc12semi),
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
                    'Add Plane Details',
                    style: CustomTextStyle.pc16semi,
                  ),
                  Text(
                    'Next : plane characteristics',
                    style: CustomTextStyle.ts14reg,
                  ),
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
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DottedBorder(
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    color: borderColor,
                    child: SizedBox(
                      height: 112,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage('assets/image/upload.png'),
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Upload Plane Image',
                            style: CustomTextStyle.pc14med,
                          )
                        ],
                      ),
                    ),
                  )),
              //  //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    makeInput30(
                      label: "LTI Name",
                      hintText: "Airbus A319 LTI-LBZ",
                    ),
                    makeInput30(
                      label: "Manufacturer",
                      hintText: "Airbus",
                    ),
                    makeInput30(
                      label: "Model",
                      hintText: "A319",
                    ),
                    makeInput30(
                      label: "LTI Plane Number",
                      hintText: "LTI-J3209911",
                    ),
                    Status(label: 'Status'),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BacknCancelBtn(
                          btnText: 'Cancel',
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 500),
                                child: PrivateJetAdmin(),
                              ),
                            );
                          },
                        ),
                        NextBtn(
                          btnText: "Next",
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: PlaneChar(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
