import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/dropdown.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/text_style.dart';
import 'amenities_drinks.dart';

class AmenitiesAdd extends StatefulWidget {
  const AmenitiesAdd({super.key});

  @override
  State<AmenitiesAdd> createState() => _AmenitiesAddState();
}

class _AmenitiesAddState extends State<AmenitiesAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Add Amenities',
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: cardColor,
          //height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        TypeAdmin(label: 'Type'),
                        Status(label: 'Status'),
                        makeInput30(
                          label: "Reference Number",
                          hintText: "A9901201",
                        ),
                        makeInput30(
                          label: "Name",
                          hintText: "Barbera",
                        ),
                        makeInput30(
                          label: "LTI Name",
                          hintText: "Barbera/LTI-90",
                        ),
                        makeInput30(
                          label: "Price",
                          hintText: "260.00",
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Overview',
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
                        //
                        SizedBox(
                          height: 20,
                        ),
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
                                    child: AmenitiesAdmin(),
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
                                    child: AmenitiesAdmin(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
