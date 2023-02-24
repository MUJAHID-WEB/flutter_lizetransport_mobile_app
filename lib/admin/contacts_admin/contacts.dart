import 'package:flutter/material.dart';
import 'package:lize/admin/contacts_admin/view_contacts_reservation.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/custom_button.dart';
import 'new_contacts.dart';

class ContactsAdmin extends StatefulWidget {
  const ContactsAdmin({super.key});

  @override
  State<ContactsAdmin> createState() => _ContactsAdminState();
}

class _ContactsAdminState extends State<ContactsAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(
        title: 'Contacts',
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
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Divider(),
                    ),
                    //creator
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditButton160(
                          btnText: 'Edit',
                          onPressed: () {
                            //ContactsNew
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ContactReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(btnText: "Delete")
                      ],
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
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditButton160(
                          btnText: 'Edit',
                          onPressed: () {
                            //ContactsNew
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ContactReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(btnText: "Delete")
                      ],
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
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditButton160(
                          btnText: 'Edit',
                          onPressed: () {
                            //ContactsNew
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ContactReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(btnText: "Delete")
                      ],
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
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditButton160(
                          btnText: 'Edit',
                          onPressed: () {
                            //ContactsNew
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ContactReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(btnText: "Delete")
                      ],
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
                    ContactsTitle(
                      id: 'John Doe',
                      image: 'assets/image/avatar.jpg',
                      btntext: 'Facility Manager',
                    ),

                    //Table
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TableW(
                            heading: 'Phone',
                            data: '1234567890',
                          ),
                          TableC(
                            heading: 'Email',
                            data: 'johndoe@gmail.com',
                          ),
                          TableW(
                            heading: 'Organizations',
                            data: 'Ebonf',
                          ),
                        ],
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EditButton160(
                          btnText: 'Edit',
                          onPressed: () {
                            //ContactsNew
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ContactReservationAdmin(),
                              ),
                            );
                          },
                        ),
                        DeleteButton160(btnText: "Delete")
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //
            // Add New Plane
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: AddButton335(
                btnText: 'New Contacts',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 500),
                      child: ContactsNew(),
                    ),
                  );
                },
              ),
            )
          ])),
    );
  }
}
