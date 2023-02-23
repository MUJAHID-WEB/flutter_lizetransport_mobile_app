import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';
import 'package:lize/common/text_style.dart';

//Select Transportation 05
class DropdownItem extends StatefulWidget {
  const DropdownItem({super.key, required this.label});
  final String label;
  @override
  State<DropdownItem> createState() => _DropdownItemState();
}

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

//Select Transportation 30
class DropdownItem30 extends StatefulWidget {
  const DropdownItem30({super.key, required this.label});
  final String label;
  @override
  State<DropdownItem30> createState() => _DropdownItem30State();
}

class _DropdownItem30State extends State<DropdownItem30> {
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems30,
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

List<DropdownMenuItem<String>> get dropdownItems30 {
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

//Dashboard Admin Revenue
class DropdownRevenue extends StatefulWidget {
  const DropdownRevenue({super.key, required this.label});
  final String label;
  @override
  State<DropdownRevenue> createState() => _DropdownRevenueState();
}

class _DropdownRevenueState extends State<DropdownRevenue> {
  String selectedValue = "Weekly";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 22, 0, 0),
          child: Text(
            'Revenue of last week',
            style: CustomTextStyle.bc16semi,
          ),
        ),

        //
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 250, 10),
          child: DropdownButtonFormField(
            focusColor: cardColor,
            value: selectedValue,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: cardColor),
                borderRadius: BorderRadius.circular(5.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: cardColor,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              filled: true,
              fillColor: cardColor,
            ),
            dropdownColor: cardColor,
            icon: ImageIcon(
              AssetImage('assets/image/dropdown.png'),
              color: textSecondary,
            ),
            style: CustomTextStyle.ts14reg,
            items: dropdownItems06,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems06 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Weekly"), value: "Weekly"),
    DropdownMenuItem(child: Text("Monthly"), value: "Monthly"),
    DropdownMenuItem(child: Text("Yearly"), value: "Yearly"),
  ];
  return menuItems;
}

//
//Admin Invoice Select Client
class SelectClient extends StatefulWidget {
  const SelectClient({super.key, required this.label});
  final String label;
  @override
  State<SelectClient> createState() => _SelectClientState();
}

class _SelectClientState extends State<SelectClient> {
  String selectedValue = "Moussa Dao";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Client',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems100,
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

List<DropdownMenuItem<String>> get dropdownItems100 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Moussa Dao"), value: "Moussa Dao"),
    DropdownMenuItem(child: Text("Moussa"), value: "Moussa"),
    DropdownMenuItem(child: Text("Mujahid"), value: "Mujahid"),
  ];
  return menuItems;
}

//

//Admin Invoice Products
class ProductAdmin extends StatefulWidget {
  const ProductAdmin({super.key, required this.label});
  final String label;
  @override
  State<ProductAdmin> createState() => _ProductAdminState();
}

class _ProductAdminState extends State<ProductAdmin> {
  String selectedValue = "FALCON 8X/LX-EBO";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Products',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: ProAdmin,
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

List<DropdownMenuItem<String>> get ProAdmin {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO"), value: "FALCON 8X/LX-EBO"),
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO2"), value: "FALCON 8X/LX-EBO2"),
    DropdownMenuItem(
        child: Text("FALCON 8X/LX-EBO3"), value: "FALCON 8X/LX-EBO3"),
  ];
  return menuItems;
}

//
//Admin  Reservation
class ResAdmin extends StatefulWidget {
  const ResAdmin({super.key, required this.label});
  final String label;
  @override
  State<ResAdmin> createState() => _ResAdminState();
}

class _ResAdminState extends State<ResAdmin> {
  String selectedValue = "R2390";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reservation',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: ResAdmin02,
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

List<DropdownMenuItem<String>> get ResAdmin02 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("R2390"), value: "R2390"),
    DropdownMenuItem(child: Text("R2390O2"), value: "R2390O2"),
    DropdownMenuItem(child: Text("R2390O3"), value: "FR2390O3"),
  ];
  return menuItems;
}

//
//Admin  Trip
class TripAdmin extends StatefulWidget {
  const TripAdmin({super.key, required this.label});
  final String label;
  @override
  State<TripAdmin> createState() => _TripAdminState();
}

class _TripAdminState extends State<TripAdmin> {
  String selectedValue = "T2390";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trip',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: TripAdmin02,
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

List<DropdownMenuItem<String>> get TripAdmin02 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("T2390"), value: "T2390"),
    DropdownMenuItem(child: Text("T23902"), value: "T23902"),
    DropdownMenuItem(child: Text("T23903"), value: "T23903"),
  ];
  return menuItems;
}

//
//Admin Status
class Status extends StatefulWidget {
  const Status({super.key, required this.label});
  final String label;
  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  String selectedValue = "Unavailable";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: Status01,
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

List<DropdownMenuItem<String>> get Status01 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Unavailable"), value: "Unavailable"),
    DropdownMenuItem(child: Text("Available"), value: "Available"),
  ];
  return menuItems;
}

//
//Admin TypeAdmin
class TypeAdmin extends StatefulWidget {
  const TypeAdmin({super.key, required this.label});
  final String label;
  @override
  State<TypeAdmin> createState() => _TypeAdminState();
}

class _TypeAdminState extends State<TypeAdmin> {
  String selectedValue = "Drinks";
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: Type02,
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

List<DropdownMenuItem<String>> get Type02 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Drinks"), value: "Drinks"),
    DropdownMenuItem(child: Text("Food"), value: "Food"),
    DropdownMenuItem(child: Text("Technologies"), value: "Technologies"),
    DropdownMenuItem(child: Text("Flowers"), value: "Flowers"),
  ];
  return menuItems;
}

//

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

//Passengers 05
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
          'Passengers',
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

//Passengers 30
class DropdownItem0230 extends StatefulWidget {
  const DropdownItem0230({super.key, required this.label});
  final String label;
  @override
  State<DropdownItem0230> createState() => _DropdownItem0230State();
}

class _DropdownItem0230State extends State<DropdownItem0230> {
  String selectedValue = "01";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Passengers',
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
              borderRadius: BorderRadius.circular(30.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: cardColor,
          ),
          dropdownColor: cardColor,
          icon: ImageIcon(
            AssetImage('assets/image/dropdown.png'),
          ),
          style: CustomTextStyle.ts12med,
          items: dropdownItems0230,
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

List<DropdownMenuItem<String>> get dropdownItems0230 {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("01"), value: "01"),
    DropdownMenuItem(child: Text("O2"), value: "O2"),
    DropdownMenuItem(child: Text("O3"), value: "O3"),
    DropdownMenuItem(child: Text("O4"), value: "O4"),
  ];
  return menuItems;
}

//
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
