import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../../../common/bottom_nav_bar.dart';
import '../../../common/colors.dart';
import '../../../common/custom_button.dart';
import '../../../common/drawer.dart';
import '../../../common/forms.dart';
import '../../../common/text_style.dart';

import '../../dashboard/dboard/dboard.dart';
import '../../onboarding/onboard02.dart';
import '../sign_up/signup.dart';

class LogInUser extends StatefulWidget {
  const LogInUser({super.key});

  @override
  State<LogInUser> createState() => _LogInUserState();
}

class _LogInUserState extends State<LogInUser> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late SharedPreferences prefs;
  // Timer? _timer; // Declare a Timer variable
  // final int _expiryTime = 2 * 60; // Set expiry time in seconds

  // @override
  // void initState() {
  //   super.initState();
  //   initSharedPref();
  //   startTimer(); // Start the timer when the screen is loaded
  // }

  // void initSharedPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

  // void signInUser() async {
  //   // ...
  // }

  // void startTimer() {
  //   _timer = Timer(Duration(seconds: _expiryTime), () {
  //     // Expire the session and navigate to the login screen
  //     prefs.clear();
  //     Navigator.pushReplacementNamed(context, '/login');
  //   });
  // }

  // void resetTimer() {
  //   _timer?.cancel(); // Cancel the current timer
  //   startTimer(); // Start a new timer
  // }
  String? refreshToken;
  String? accessToken; // Declare the accessToken variable
  DateTime? tokenExpiryTime; // Add a variable to store the token expiry time

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  void signInUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var reqRefBody = {
        "email": emailController.text,
        "password": passwordController.text
      };
      var response = await http.post(
          Uri.parse('https://api.lizetransport.com/user/login'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqRefBody));
      //
      var jsonResponse = jsonDecode(response.body);

      // print(jsonResponse);
      if (jsonResponse['msg'] == "Login success!") {
        var refreshToken = jsonResponse['refreshtoken'];
        // print(refreshToken);
        prefs.setString('refreshtoken', refreshToken);
//expiry time
        // Get the current time in seconds since epoch
        // int currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;

        // Set the expiry time for the access token to 1 minute from now
        //   int accessTokenExpiry = currentTime + (1 * 60);

// //access token
        var refreshResponse = await http.post(
            Uri.parse('https://api.lizetransport.com/user/access_token'),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({'refreshToken': refreshToken}));

        var refreshJsonResponse = jsonDecode(refreshResponse.body);
        // print(refreshJsonResponse);
        accessToken =
            refreshJsonResponse['access_token']; // Set the accessToken variable
        // print(accessToken);
        prefs.setString('accessToken',
            accessToken!); // Store access token in shared preferences
        // Store the access token expiry time in shared preferences
        // prefs.setInt('accessTokenExpiry', accessTokenExpiry);
        // Set the token expiry time to 10 minutes from the current time
        tokenExpiryTime = DateTime.now().add(Duration(minutes: 10));

        if (JwtDecoder.isExpired(accessToken!)) {
          // access token has expired, need to login again
          print('Access token has expired, please login again');
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeP(
                accesstoken: accessToken!,
              ),
            ),
          );
        }
      } else {
        print('Something went wrong while logging in');
      }
      //
    }
  }

  void resetTokenExpiryTime() {
    // Reset the token expiry time to 10 minutes from the current time
    setState(() {
      tokenExpiryTime = DateTime.now().add(Duration(minutes: 10));
    });
  }

//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: resetTokenExpiryTime, // Reset token expiry time on long press

        child: Container(
          // color: secondaryColor,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image/login_bg.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: blackColor50,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 12),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: ImageIcon(
                            AssetImage(
                              'assets/image/back_arrow.png',
                            ),
                            color: cardColor,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/image/logo_white.png',
                        height: 54,
                        width: 205.24,
                      ),
                    ],
                  ),
                ),
                //
                Container(
                    height: MediaQuery.of(context).size.height / 1.175,
                    decoration: BoxDecoration(
                        color: cardColor,
                        //border: Border.all(width: 1, color: blackColor05),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(60))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Again!',
                            style: CustomTextStyle.tp32800,
                          ),
                          //
                          Text(
                            'Sign In to your Account.',
                            style: CustomTextStyle.ts14reg,
                          ),
                          //
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                makeInput05tp5(
                                    controller: emailController,
                                    label: 'Email',
                                    hintText: 'johndoe@gmail.com'),

                                SizedBox(
                                  height: 20,
                                ),
                                makeInput05tp5(
                                    controller: passwordController,
                                    label: 'Password',
                                    hintText: '********',
                                    obscureText: true),
                                //
                                SizedBox(
                                  height: 10,
                                ),

                                Text(
                                  'Forgot your Password?',
                                  style: CustomTextStyle.tp14med,
                                ),
                              ],
                            ),
                          ),
                          //

                          ScBtn330(btnText: 'Sign In', onPressed: signInUser),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Image.asset(
                              'assets/image/orwith.jpg',
                            ),
                          ),

                          CcBtn330(
                            image: 'assets/image/google.jpg',
                            btnText: 'Sign In with Google',
                            onPressed: () {},
                          ),
                          CcBtn330(
                            image: 'assets/image/fb.jpg',
                            btnText: 'Sign In with Facebook',
                            onPressed: () {},
                          ),

                          //
                          Row(
                            children: <Widget>[
                              Text(
                                'Not a member yet? ',
                                style: CustomTextStyle.ts14reg,
                              ),
                              TextButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: textPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                onPressed: () {
                                  //signup screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpUser(),
                                    ),
                                  );
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//

// class AppState {
//   static String? refreshToken;
//   static String? accessToken;
// }

// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({Key? key}) : super(key: key);

//   @override
//   State<RegistrationScreen> createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final firstNameController = TextEditingController();
//   final lastNameController = TextEditingController();
//   final emailController = TextEditingController();
//   final citizenshipController = TextEditingController();
//   final phoneNumberController = TextEditingController();
//   final passwordController = TextEditingController();
//   final organizationNameController = TextEditingController();

//   void _submitForm() async {
//     final firstName = firstNameController.text;
//     final lastName = lastNameController.text;
//     final email = emailController.text;
//     final citizenship = citizenshipController.text;
//     final phoneNumber = phoneNumberController.text;
//     final password = passwordController.text;
//     final organizationName = organizationNameController.text;

//     final response = await http.post(
//       Uri.parse('https://api.lizetransport.com/user/signup'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({
//         'firstName': firstName,
//         'lastName': lastName,
//         'email': email,
//         'citizenship': citizenship,
//         'phone': phoneNumber,
//         'password': password,
//         'organizationName': organizationName,
//       }),
//     );

//     if (response.statusCode == 200) {
//       print('Registration successful!');

//       final loginResponse = await http.post(
//         Uri.parse('https://api.lizetransport.com/user/login'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'email': email,
//           'password': password,
//         }),
//       );

//       if (loginResponse.statusCode == 200) {
//         final jsonResponse = jsonDecode(loginResponse.body);
//         final refreshToken = jsonResponse['refreshToken'];

//         setState(() {
//           AppState.refreshToken = refreshToken;
//         });

//         print('Refresh token generated: $refreshToken');

//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => HomeP()),
//         );
//       } else {
//         print('Error generating refresh token: ${loginResponse.statusCode}');
//         // ...
//       }
//     } else {
//       print('Error registering user: ${response.statusCode}');
//       // ...
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registration'),
//       ),
//       body: ListView(children: [
//         Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               TextField(
//                 controller: firstNameController,
//                 decoration: const InputDecoration(
//                   labelText: 'First Name',
//                 ),
//               ),
//               TextField(
//                 controller: lastNameController,
//                 decoration: const InputDecoration(
//                   labelText: 'Last Name',
//                 ),
//               ),
//               TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                 ),
//               ),
//               TextField(
//                 controller: citizenshipController,
//                 decoration: const InputDecoration(
//                   labelText: 'Citizenship',
//                 ),
//               ),
//               TextField(
//                 controller: phoneNumberController,
//                 decoration: const InputDecoration(
//                   labelText: 'Phone',
//                 ),
//               ),
//               TextField(
//                 controller: organizationNameController,
//                 decoration: const InputDecoration(
//                   labelText: 'Org Name',
//                 ),
//               ),
//               TextField(
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                 ),
//                 obscureText: true,
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: _submitForm,
//                 child: const Text('Register'),
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }

//

// class HomeP extends StatefulWidget {
//   const HomeP({super.key});

//   @override
//   State<HomeP> createState() => _HomePState();
// }

// class _HomePState extends State<HomeP> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(' Alhamdulillah'),
//       ),
//     );
//   }
// }
// class HomeP extends StatefulWidget {
//   final String accesstoken;

//   const HomeP({required this.accesstoken, Key? key}) : super(key: key);

//   @override
//   _HomePState createState() => _HomePState();
// }

// class _HomePState extends State<HomeP> {
//   // List<dynamic> data = [];
//   final Map<String, dynamic> data;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();

//     fetchData();
//   }

//   void fetchData() async {
//     setState(() {
//       isLoading = true;
//     });

//     try {
//       var response = await http.get(
//         Uri.parse('https://api.lizetransport.com/dashboard/dashboard-data'),
//         headers: {"Authorization": "${widget.accesstoken}"},
//       );

//       print('Token : ${widget.accesstoken}');

//       var items = jsonDecode(response.body);

//       // print(jsonResponse);
//       if (response.statusCode == 200) {
//         // var items = jsonDecode(response.body);
//         setState(() {
//           data = items;
//         });
//       } else {
//         print('Failed to fetch data}');
//       }
//       setState(() {
//         isLoading = false;
//       });
//     } catch (e) {
//       print('Error fetching data: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : data.isNotEmpty
//               ? ListView.builder(
//                   itemCount: data.length,
//                   itemBuilder: (context, index) {
//                     final dashboard = data[index];
//                     final totalTrips = dashboard['totalTrips'];
//                     final newReservation = dashboard['newReservation'];
//                     final reservationPercent = dashboard['reservationPercent'];
//                     final totalInvoice = dashboard['totalInvoice'];
//                     final newInvoice = dashboard['newInvoice'];
//                     final invoicePercentage = dashboard['invoicePercentage'];
//                     final totalCrews = dashboard['totalCrews'];
//                     final totalTeams = dashboard['totalTeams'];
//                     final totalFile = dashboard['totalFile'];

//                     return ListTile(
//                       title: Text('Total Trips: $totalTrips'),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('New Reservation: $newReservation'),
//                           Text('Reservation Percentage: $reservationPercent'),
//                           Text('Total Invoice: $totalInvoice'),
//                           Text('New Invoice: $newInvoice'),
//                           Text('Invoice Percentage: $invoicePercentage'),
//                           Text('Total Crews: $totalCrews'),
//                           Text('Total Teams: $totalTeams'),
//                           Text('Total File: $totalFile'),
//                         ],
//                       ),
//                     );
//                   },
//                 )
//               : Center(
//                   child: Text('No data to display.'),
//                 ),
//     );
//   }
// }

class HomeP extends StatefulWidget {
  final String accesstoken;

  const HomeP({required this.accesstoken, Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  Future<Map<String, dynamic>>? _dashboardData;

  @override
  void initState() {
    super.initState();
    _dashboardData = fetchData();
  }

  Future<Map<String, dynamic>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://api.lizetransport.com/dashboard/dashboard-data'),
      headers: {"Authorization": "${widget.accesstoken}"},
    );
    final jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return jsonResponse;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _dashboardData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final dashboardData = snapshot.data!;
            return ListView(
              children: [
                ListTile(
                  title: Text('Total Trips'),
                  subtitle: Text(dashboardData['totalTrips'].toString()),
                ),
                ListTile(
                  title: Text('New Reservations'),
                  subtitle: Text(dashboardData['newReservation'].toString()),
                ),
                ListTile(
                  title: Text('Total Invoice'),
                  subtitle: Text(dashboardData['totalInvoice'].toString()),
                ),
                ListTile(
                  title: Text('New Invoice'),
                  subtitle: Text(dashboardData['newInvoice'].toString()),
                ),
                ListTile(
                  title: Text('Total Crews'),
                  subtitle: Text(dashboardData['totalCrews'].toString()),
                ),
                ListTile(
                  title: Text('Total Teams'),
                  subtitle: Text(dashboardData['totalTeams'].toString()),
                ),
                ListTile(
                  title: Text('Total Files'),
                  subtitle: Text(dashboardData['totalFile'].toString()),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
