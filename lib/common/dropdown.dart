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
