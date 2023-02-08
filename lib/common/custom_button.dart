import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

//Edit Button 330
class EditButton330 extends StatelessWidget {
  const EditButton330({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 330,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                    color: primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.pc16med,
            ),
          ),
        ),
      ],
    );
  }
}

//Edit Button 160
class EditButton160 extends StatelessWidget {
  const EditButton160({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 160,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                    color: primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.pc16med,
            ),
          ),
        ),
      ],
    );
  }
}

//Delete Button 330
class DeleteButton330 extends StatelessWidget {
  const DeleteButton330({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 330,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                    color: unpaidBtn,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.unpaidbtn16med,
            ),
          ),
        ),
      ],
    );
  }
}

//Delete Button 160
class DeleteButton160 extends StatelessWidget {
  const DeleteButton160({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 160,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                    color: unpaidBtn,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.unpaidbtn16med,
            ),
          ),
        ),
      ],
    );
  }
}

//Add/Confirm Button 335
class AddButton335 extends StatelessWidget {
  const AddButton335({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 335,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  // side: BorderSide(
                  //   color: primaryColor,
                  //   width: 1.0,
                  // ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.cc16med,
            ),
          ),
        ),
      ],
    );
  }
}

// Back and Cancel Button

class BacknCancelBtn extends StatelessWidget {
  const BacknCancelBtn({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 160,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: textSecondary,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.ts16med,
            ),
          ),
        ),
      ],
    );
  }
}

// Next Button

class NextBtn extends StatelessWidget {
  const NextBtn({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 160,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // padding: MaterialStateProperty.all<EdgeInsets>(
              //     EdgeInsets.symmetric(vertical: 13, horizontal: 150)),
              backgroundColor: MaterialStatePropertyAll(primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  // side: BorderSide(
                  //   color: textSecondary,
                  //   width: 1.0,
                  // ),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.cc16med,
            ),
          ),
        ),
      ],
    );
  }
}

//
//White Button 330
class WhiteBtn330 extends StatelessWidget {
  const WhiteBtn330({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          width: 335,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.sc18med,
            ),
          ),
        ),
      ],
    );
  }
}

// sign In

//SC Button 330
class ScBtn330 extends StatelessWidget {
  const ScBtn330({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(secondaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            child: Text(
              btnText,
              style: CustomTextStyle.cc16bold,
            ),
          ),
        ),
      ],
    );
  }
}

////CC Button 330
class CcBtn330 extends StatelessWidget {
  const CcBtn330({super.key, required this.btnText, required this.image});
  final String btnText, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(cardColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: textSecondary,
                      width: 1.0,
                    )),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  btnText,
                  style: CustomTextStyle.tp16semi,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
