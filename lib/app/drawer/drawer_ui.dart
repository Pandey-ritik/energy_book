// import 'package:digital_discom/app/global/appcolor.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MyDrawer extends StatelessWidget {
//
//   const MyDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           DrawerHeader(
//             curve: Curves.linear,padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(color: appcolor.orange),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//               backgroundImage: AssetImage('assets/images/mohit.png'),),
//             //SizedBox(height: 30,),
//             Column(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Hi, Mohit', style: GoogleFonts.jost(
//                     textStyle :TextStyle(
//                         color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
//                     )
//                 ),),
//                 Text('CIN - 000012345', style: GoogleFonts.jost(
//                     textStyle :TextStyle(
//                         color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600
//                     )
//                 ),),],
//             )
//           ],)),
//           ListTile(
//             leading:Icon(Icons.home_outlined,color: appcolor.orange,) ,
//             title:Text('Home', style: GoogleFonts.jost(textStyle :TextStyle(
//                 color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             leading:Icon(Icons.home_outlined,color: appcolor.orange,) ,
//             title:Text('Home', style: GoogleFonts.jost(textStyle :TextStyle(
//                 color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             leading:Icon(Icons.home_outlined,color: appcolor.orange,) ,
//             title:Text('Home', style: GoogleFonts.jost(textStyle :TextStyle(
//                 color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             leading:Icon(Icons.home_outlined,color: appcolor.orange,) ,
//             title:Text('Home', style: GoogleFonts.jost(textStyle :TextStyle(
//                 color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),),
//             onTap: () {
//
//             },
//           ),
//           ListTile(
//             leading:Icon(Icons.home_outlined,color: appcolor.orange,) ,
//             title:Text('Home', style: GoogleFonts.jost(textStyle :TextStyle(
//                 color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),),
//             onTap: () {
//
//             },
//           ),
//
//         ],
//
//       ),
//     );
//   }
// }
// import 'package:digital_discom/app/global/appcolor.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class MyDrawer extends StatelessWidget {
//
//   const MyDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container( // Add Container here
//       color: appcolor.black, // Set background color here
//       child: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               //curve: Curves.linear,
//               padding: EdgeInsets.all(10),
//               //decoration: BoxDecoration(color: appcolor.orange),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: AssetImage('assets/images/mohit.png'),
//                   ),
//                   // SizedBox(height: 30,),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Hi, Mohit',
//                         style: GoogleFonts.jost(
//                             textStyle: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                       Text(
//                         'CIN - 000012345',
//                         style: GoogleFonts.jost(
//                             textStyle: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home_outlined, color: appcolor.orange),
//               title: Text(
//                 'Home',
//                 style: GoogleFonts.jost(
//                     textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600)),
//               ),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.home_outlined, color: appcolor.orange),
//               title: Text(
//                 'Home',
//                 style: GoogleFonts.jost(
//                     textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600)),
//               ),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.home_outlined, color: appcolor.orange),
//               title: Text(
//                 'Home',
//                 style: GoogleFonts.jost(
//                     textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600)),
//               ),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.home_outlined, color: appcolor.orange),
//               title: Text(
//                 'Home',
//                 style: GoogleFonts.jost(
//                     textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600)),
//               ),
//               onTap: () {},
//             ),
//             // Add more ListTiles as needed
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:digital_discom/app/drawer/items_ui/about_us_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/compliants.dart';
import 'package:digital_discom/app/drawer/items_ui/enqiuryHistory_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/feedback_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/privacy_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/profile_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/social_ui.dart';
import 'package:digital_discom/app/drawer/items_ui/visit_ui.dart';
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:digital_discom/app/ui/login_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'items_ui/terms_ui.dart';
import 'items_ui/enquriy_ui.dart';
import 'items_ui/faqs/faqs_ui.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: appcolor.orange,
      width: 250,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(),
          side: BorderSide(style: BorderStyle.none)),
      child: ListView(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
                dividerTheme: DividerThemeData(color: Colors.transparent)),
            child: SizedBox(
              width: 250,
              height: 105,
              child: DrawerHeader(
                // margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: appcolor.orange,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/drawer back.jpeg',
                        ),
                        fit: BoxFit.cover)),
                curve: Curves.bounceOut,

                // decoration: BoxDecoration(color: appcolor.orange,shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 55,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/mohit.png'),
                      ),
                    ),
                    // SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Mohit',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Text(
                            'CIN - 000012345',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            // padding: EdgeInsets.only(bottom: 0),
            // Container for background color
            color: appcolor.blue, // Set background color here
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.home_outlined, color: appcolor.orange),
                    title: Text(
                      'Home',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.person_outline_sharp,
                        color: appcolor.orange),
                    title: Text(
                      'Profile',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfileUi()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.volunteer_activism_outlined,
                        color: appcolor.orange),
                    title: Text(
                      'Service Details',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.work_history_outlined,
                        color: appcolor.orange),
                    title: Text(
                      'Enquiry History',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnquiryHistory()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.view_array_outlined, color: appcolor.orange),
                    title: Text(
                      'View Quotations',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.view_sidebar_outlined,
                        color: appcolor.orange),
                    title: Text(
                      'Ask Site Visit',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VisitUi()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.notifications_none_rounded,
                        color: appcolor.orange),
                    title: Text(
                      'Notification',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.home_outlined, color: appcolor.orange),
                    title: Text(
                      'About Us',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutUi()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.exit_to_app_rounded, color: appcolor.orange),
                    title: Text(
                      'App Share',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.star, color: appcolor.orange),
                    title: Text(
                      'Rate Us',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.person_add_alt, color: appcolor.orange),
                    title: Text(
                      'Social Media',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SocialMedia()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.person_search, color: appcolor.orange),
                    title: Text(
                      'Support',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.feedback, color: appcolor.orange),
                    title: Text(
                      'Feedback',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedBackPage()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.exit_to_app_rounded, color: appcolor.orange),
                    title: Text(
                      'Tools',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.exit_to_app_rounded, color: appcolor.orange),
                    title: Text(
                      'Blogs',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.person_pin_outlined, color: appcolor.orange),
                    title: Text(
                      'Compliants',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => compliantPage()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.feedback_outlined, color: appcolor.orange),
                    title: Text(
                      'FAQs',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FaqsUi()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading:
                        Icon(Icons.privacy_tip_rounded, color: appcolor.orange),
                    title: Text(
                      'Privacy Policies',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PrivacyUi()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 35,
                  child: ListTile(
                    leading: Icon(Icons.paste_outlined, color: appcolor.orange),
                    title: Text(
                      'Terms & Condition',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Terms_ui()));
                    },
                  ),
                ),
                Container(
                  width: 240,
                  height: 50,
                  child: ListTile(
                    leading: Icon(Icons.logout, color: appcolor.orange),
                    title: Text(
                      'Logout',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return rectangularDialog(context);
                            //   AlertDialog(
                            //   title: Center(
                            //     child: Text('Logout',style: GoogleFonts.jost(
                            //         textStyle : TextStyle(
                            //             color: Colors.black,
                            //             fontSize: 26, fontWeight: FontWeight.w600)),),
                            //   ),
                            //   backgroundColor: Colors.white,
                            //   content:Text('Are you sure want to Logout?',style: GoogleFonts.jost(
                            // textStyle : TextStyle(
                            // color: Colors.black,
                            // fontSize: 20, ))),
                            //   actions: <Widget>[
                            //     // TextButton(
                            //     //   onPressed: () {
                            //     //     Navigator.push(context, MaterialPageRoute(builder: (context) => LoginUi()));
                            //     //   },
                            //     //   child:Text('Yes',style: GoogleFonts.jost(
                            //     //       textStyle : TextStyle(
                            //     //           color: Colors.black,
                            //     //           fontSize: 20, fontWeight: FontWeight.w600)),),
                            //     // ),
                            //     // SizedBox(width: 20,),
                            //     // TextButton(
                            //     //   onPressed: () {
                            //     //     Navigator.of(context).pop();
                            //     //   },
                            //     //   child: Text('No',style: GoogleFonts.jost(
                            //     //       textStyle : TextStyle(
                            //     //           color: Colors.black,
                            //     //           fontSize: 20, fontWeight: FontWeight.w600)),),
                            //     // ),
                            //     Row(
                            //       children: [
                            //         Expanded(
                            //           child: ElevatedButton(
                            //             onPressed: () {
                            //              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginUi()));
                            //             },
                            //             child: Text(
                            //               "Yes",
                            //               style: GoogleFonts.jost(
                            //                   textStyle: TextStyle(color: Colors.white,
                            //                       fontSize: 18,
                            //                       fontWeight: FontWeight.w600)),
                            //             ),
                            //             style: ButtonStyle(
                            //               shape: MaterialStateProperty.all<
                            //                   RoundedRectangleBorder>(
                            //                 RoundedRectangleBorder(
                            //                   borderRadius: BorderRadius.circular(0),
                            //                 ),
                            //               ),
                            //               backgroundColor: MaterialStateProperty.all(
                            //                   appcolor.orange),
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //     Row(
                            //       children: [
                            //         Expanded(
                            //           child: ElevatedButton(
                            //             onPressed: () {
                            //               Navigator.pop(context);
                            //             },
                            //             child: Text(
                            //               "No",
                            //               style: GoogleFonts.jost(
                            //                   textStyle: TextStyle(color: Colors.white,
                            //                       fontSize: 18,
                            //                       fontWeight: FontWeight.w600)),
                            //             ),
                            //             style: ButtonStyle(
                            //               shape: MaterialStateProperty.all<
                            //                   RoundedRectangleBorder>(
                            //                 RoundedRectangleBorder(
                            //                   borderRadius: BorderRadius.circular(0),
                            //                 ),
                            //               ),
                            //               backgroundColor: MaterialStateProperty.all(
                            //                   appcolor.orange),
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //
                            //   ],
                            //
                            // );
                          });
                    },
                  ),
                ),

                // Add more ListTiles as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget rectangularDialog(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Logout',
            style: GoogleFonts.jost(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Are you sure want to Logout?',
            style: GoogleFonts.jost(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                // onPressed: () {
                //   Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => LoginUi()),
                //         (route) => false, // Remove all routes
                //   );
                //   // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginUi()));
                // },
                onPressed: () {
                  // Navigate to the login screen and remove all previous routes from the stack
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginUi()),
                    (route) => false, // Remove all routes
                  ).then((_) {
                    print("Logout button pressed, showing toast message.");
                  });
                },
                // After navigation is complete, display a toast message
                // Fluttertoast.showToast(
                //   msg: "You are logged out",
                //   toastLength: Toast.LENGTH_SHORT,
                //   gravity: ToastGravity.BOTTOM,
                //   timeInSecForIosWeb: 20,
                //   backgroundColor: Colors.black,
                //   textColor: Colors.white,
                //   fontSize: 16.0,
                // );
                child: Text(
                  "Yes",
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "No",
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
