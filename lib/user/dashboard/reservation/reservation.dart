import 'package:flutter/material.dart';
import 'package:lize/common/appbar.dart';
import 'package:lize/common/colors.dart';

import '../../../common/bottom_nav_bar.dart';
import '../../../common/forms.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(title: 'Reservation'),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Container(
          color: cardColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                    child: Column(
                      children: [
                        makeInput(
                          label: "Departing City",
                          hintText: "Enter your city name",
                        ),
                        makeInput(
                          label: "Returning City",
                          hintText: "Enter your city name",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomePageUser(),
    );
  }
}
