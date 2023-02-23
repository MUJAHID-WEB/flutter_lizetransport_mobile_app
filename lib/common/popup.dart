//  onPressed: () {
//                       //
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             content: Stack(
//                               //overflow: Overflow.visible,
//                               clipBehavior: Clip.none,
//                               children: <Widget>[
//                                 Positioned(
//                                   right: 0.0,
//                                   top: 0.0,
//                                   child: InkResponse(
//                                     onTap: () {
//                                       Navigator.of(context).pop();
//                                     },
//                                     child: CircleAvatar(
//                                       child: Icon(
//                                         Icons.close,
//                                         color: textSecondary,
//                                       ),
//                                       backgroundColor: cardColor,
//                                     ),
//                                   ),
//                                 ),
//                                 //
//                                 Container(
//                                   height: 298,
//                                   width: double.infinity,
//                                   // decoration: BoxDecoration(
//                                   //   borderRadius: BorderRadius.horizontal(
//                                   //     left: Radius.circular(20),
//                                   //     right: Radius.circular(20),
//                                   //   ),
//                                   // ),
//                                   alignment: Alignment.center,
//                                   child: Center(
//                                     child: Padding(
//                                       padding: const EdgeInsets.fromLTRB(
//                                           0, 40, 0, 0),
//                                       child: Column(
//                                         children: [
//                                           Image.asset(
//                                               'assets/image/confirm.jpg'),
//                                           Padding(
//                                             padding: const EdgeInsets.fromLTRB(
//                                                 0, 30, 0, 12),
//                                             child: Text(
//                                               'Your Order has been Confirmed!',
//                                               textAlign: TextAlign.center,
//                                               style: CustomTextStyle.tp18semi,
//                                             ),
//                                           ),
//                                           Text(
//                                             'Thank you for your adding Amenities to your Trip/Reservation.',
//                                             textAlign: TextAlign.center,
//                                             style: CustomTextStyle.tp14med,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                                 //
//                               ],
//                             ),
//                           );
//                         },
//                       );
//                     },