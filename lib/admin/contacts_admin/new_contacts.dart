import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/forms.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import '../../common/dropdown.dart';
import '../../common/text_style.dart';
import 'contacts.dart';

class ContactsNew extends StatefulWidget {
  const ContactsNew({super.key});

  @override
  State<ContactsNew> createState() => _ContactsNewState();
}

class _ContactsNewState extends State<ContactsNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'New Contacts',
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
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
              //
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    makeInput30(
                      label: "Full Name",
                      hintText: "John Doe",
                    ),
                    makeInput30(
                      label: "Title",
                      hintText: "Facility Manager",
                    ),
                    makeInput30(
                      label: "Mobile Number",
                      hintText: "+1",
                    ),
                    makeInput30(
                      label: "Email",
                      hintText: "johndoe@gmail.com",
                    ),

                    //
                    OrgAdmin(
                      label: 'Organizations',
                    ),
                    //
                  ],
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BacknCancelBtn(
                      btnText: 'Cancel',
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 500),
                            child: ContactsAdmin(),
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
                            child: ContactsAdmin(),
                          ),
                        );
                      },
                    )
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
