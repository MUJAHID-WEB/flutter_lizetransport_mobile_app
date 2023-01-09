import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../../../common/forms.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                        label: "Price",
                        hintText: "25,000,00",
                      ),
                      makeInput(
                        label: "Discount",
                        hintText: "0%",
                      ),
                      makeInput(
                        label: "Discount Value",
                        hintText: "0%",
                      ),
                      makeInput(
                        label: "Discount Code",
                        hintText: "LTIDI0029",
                      ),
                      makeInput(
                        label: "Final Price",
                        hintText: "25,000,00",
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
