import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

class DropdownItem extends StatefulWidget {
  const DropdownItem({super.key, required this.label});
  final String label;
  @override
  State<DropdownItem> createState() => _DropdownItemState();
}

//Select Transportation
class _DropdownItemState extends State<DropdownItem> {
  String selectedValue = "FALCON 8X/LX-EBO";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Transportation',
          style: CustomTextStyle.tp14semi,
        ),

        SizedBox(
          height: 10,
        ),
        //
        DropdownButtonFormField(
          value: selectedValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO"), value: "FALCON 8X/LX-EBO"),
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO2"), value: "FALCON 8X/LX-EBO2"),
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO3"), value: "FALCON 8X/LX-EBO3"),
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO4"), value: "FALCON 8X/LX-EBO4"),
  ];
  return menuItems;
}

//class _DropdownItemState extends State<DropdownItem> {
//   String? selectedValue = null;
//   final _dropdownFormKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _dropdownFormKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButtonFormField(
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   filled: true,
//                   fillColor: Colors.blueAccent,
//                 ),
//                 validator: (value) => value == null ? "Select a country" : null,
//                 dropdownColor: Colors.blueAccent,
//                 value: selectedValue,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedValue = newValue!;
//                   });
//                 },
//                 items: dropdownItems),
//             ElevatedButton(
//                 onPressed: () {
//                   if (_dropdownFormKey.currentState!.validate()) {
//                     //valid flow
//                   }
//                 },
//                 child: Text("Submit"))
//           ],
//         ));
//   }
// }

//Passengers
class DropdownItem02 extends StatefulWidget {
  const DropdownItem02({super.key, required this.label});
  final String label;
  @override
  State<DropdownItem02> createState() => _DropdownItem02State();
}

class _DropdownItem02State extends State<DropdownItem02> {
  String selectedValue = "01";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Transportation',
          style: CustomTextStyle.tp14semi,
        ),

        SizedBox(
          height: 10,
        ),
        //
        DropdownButtonFormField(
          value: selectedValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems02,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems02 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("01"), value: "01"),
    DropdownMenuItem(child: Text("O2"), value: "O2"),
    DropdownMenuItem(child: Text("O3"), value: "O3"),
    DropdownMenuItem(child: Text("O4"), value: "O4"),
  ];
  return menuItems;
}

//
//Prefix profile user info
class PrUserInfo extends StatefulWidget {
  const PrUserInfo({super.key, required this.label});
  final String label;
  @override
  State<PrUserInfo> createState() => _PrUserInfoState();
}

class _PrUserInfoState extends State<PrUserInfo> {
  String selectedValue = "Mr.";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prefix',
          style: CustomTextStyle.tp14semi,
        ),

        SizedBox(
          height: 10,
        ),
        //
        DropdownButtonFormField(
          value: selectedValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems03,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems03 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Mr."), value: "Mr."),
    DropdownMenuItem(child: Text("Mrs."), value: "Mrs."),
  ];
  return menuItems;
}

//Prefix profile user info
class LanUserInfo extends StatefulWidget {
  const LanUserInfo({super.key, required this.label});
  final String label;
  @override
  State<LanUserInfo> createState() => _LanUserInfoState();
}

class _LanUserInfoState extends State<LanUserInfo> {
  String selectedValue = "French";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Language',
          style: CustomTextStyle.tp14semi,
        ),

        SizedBox(
          height: 10,
        ),
        //
        DropdownButtonFormField(
          value: selectedValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems04,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems04 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("French"), value: "French"),
    DropdownMenuItem(child: Text("English"), value: "English"),
  ];
  return menuItems;
}

//

//Type profile Org info
class TypeOrgInfo extends StatefulWidget {
  const TypeOrgInfo({super.key, required this.label});
  final String label;
  @override
  State<TypeOrgInfo> createState() => _TypeOrgInfoState();
}

class _TypeOrgInfoState extends State<TypeOrgInfo> {
  String selectedValue = "Not for Profit";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Type',
          style: CustomTextStyle.tp14semi,
        ),

        SizedBox(
          height: 10,
        ),
        //
        DropdownButtonFormField(
          value: selectedValue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems05,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems05 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Not for Profit"), value: "Not for Profit"),
    DropdownMenuItem(child: Text("Only for Profit"), value: "Only for Profit"),
  ];
  return menuItems;
}
