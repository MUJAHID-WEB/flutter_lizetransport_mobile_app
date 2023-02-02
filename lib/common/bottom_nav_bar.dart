import 'package:flutter/material.dart';
import 'package:lize/common/colors.dart';

import '../admin/dashboard_admin/dashboard_admin.dart';
import '../admin/reservation_admin/new_passenger_reservation.dart';
import '../admin/reservation_admin/passanger_reservation.dart';
import '../admin/reservation_admin/pricing.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Bottom Nav Bar
  int _selectedIndex = 0;

  final _pages = [
    DashboardAdmin(),
    Pricing(),
    NewPassengerReservation(),
    PassengerResAdmin(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: textSecondary,
        selectedItemColor: secondaryColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Colors.yellowAccent,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/home.png'),
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/phone_admin.png'),
            ),
            label: "Reservation",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/trips_admin.png'),
            ),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/image/msg_admin.png'),
            ),
            label: "Messages",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   late PageController _myPage;
//   var selectedPage;

//   @override
//   void initState() {
//     super.initState();
//     _myPage = PageController(initialPage: 1);
//     selectedPage = 1;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView(
//           physics: NeverScrollableScrollPhysics(),
//           controller: _myPage,
//           children: <Widget>[
//             DashboardAdmin(),
//             Pricing(),
//             NewPassengerReservation(),
//             // Center(
//             //   child: Text("Another Page"),
//             // ),
//             Center(
//                 child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text("Page 1"),
//                 TextButton(
//                   onPressed: () {
//                     _myPage.jumpToPage(0);
//                     setState(() {
//                       selectedPage = 0;
//                     });
//                   },
//                   child: Text("Go to another page"),
//                 )
//               ],
//             )),
//             // Center(child: Text("Page 2")),
//             // Center(child: Text("Page 3")),
//           ],
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.home),
//                 color: selectedPage == 1 ? Colors.blue : Colors.grey,
//                 onPressed: () {
//                   _myPage.jumpToPage(1);
//                   setState(() {
//                     selectedPage = 1;
//                   });
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.star),
//                 color: selectedPage == 2 ? Colors.blue : Colors.grey,
//                 onPressed: () {
//                   _myPage.jumpToPage(2);
//                   setState(() {
//                     selectedPage = 2;
//                   });
//                 },
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.settings,
//                 ),
//                 color: selectedPage == 3 ? Colors.blue : Colors.grey,
//                 onPressed: () {
//                   _myPage.jumpToPage(3);
//                   setState(() {
//                     selectedPage = 3;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ));
//   }
// }
