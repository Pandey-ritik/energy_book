import 'dart:convert';

import 'package:digital_discom/app/global/appcolor.dart';
import 'package:digital_discom/app/ui/sign_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final TextEditingController phoneNumberController = TextEditingController();
 // final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/energy_back.jpeg',
              ),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
               children: [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SizedBox(height: 150,),
                      Image.asset('assets/images/applogo.png', 
                        height: 100,width: 241,),
                      SizedBox(height: 30,),
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Login',style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                color: appcolor.black,
                                  fontSize: 32,fontWeight: FontWeight.w600
                              ),
                            ) ,),
                            SizedBox(height: 15,),
                            Text('Mobile Number', style: GoogleFonts.jost(
                              textStyle :TextStyle(
                                color: appcolor.black,fontSize: 16,fontWeight: FontWeight.w600
                              )
                            ),),
                            SizedBox(height: 10,),
                            TextField(
                              controller: phoneNumberController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                 LengthLimitingTextInputFormatter(10),
                                //_IndianMobileNumberFormatter(),
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Enter your mobile number", hintStyle: TextStyle(color: Colors.grey,),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey, width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1,color: Colors.red),borderRadius: BorderRadius.circular(10)
                                ),
                                prefixIcon: Icon(Icons.phone, color: Colors.orange,),
                              ),

                            ),
                            // Container(
                            //   child: Container(
                            //     child:
                            //     IntlPhoneField(
                            //       controller: phoneNumberController,
                            //       initialCountryCode: 'IN',
                            //       textAlignVertical: TextAlignVertical.bottom,
                            //       decoration: InputDecoration(
                            //         contentPadding:
                            //         const EdgeInsets.symmetric(vertical: 16),
                            //         counterText: '',
                            //         hintText: "Enter your Phone number",
                            //         hintStyle: TextStyle(
                            //           fontSize: 16,
                            //           fontWeight: FontWeight.w400,
                            //           color: Colors.grey,
                            //         ),
                            //         focusedBorder: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(12),
                            //           borderSide: BorderSide(
                            //             color: appcolor.black,
                            //             width: 1.0,
                            //           ),
                            //         ),
                            //         enabledBorder: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(12),
                            //           borderSide: BorderSide(
                            //             color: Colors.grey,
                            //             width: 1.0,
                            //           ),
                            //         ),
                            //         errorBorder: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(12),
                            //           borderSide: BorderSide(
                            //             color: Colors.red,
                            //             width: 1.0,
                            //           ),
                            //         ),
                            //         focusedErrorBorder: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(12),
                            //           borderSide: BorderSide(
                            //             color: Colors.red,
                            //             width: 1.0,
                            //           ),
                            //         ),
                            //       ),
                            //       keyboardType: TextInputType.phone,
                            //       inputFormatters: [LengthLimitingTextInputFormatter(10)],
                            //     ),
                            //   ),
                            // ),

                            // TextField(
                            //   keyboardType: TextInputType.number,
                            //   inputFormatters: [
                            //     LengthLimitingTextInputFormatter(12),
                            //     _IndianMobileNumberFormatter(),
                            //   ],
                            //   decoration: InputDecoration(
                            //     border: OutlineInputBorder( borderRadius: BorderRadius.circular(10)),
                            //     hintText: "+91 Enter your phone number",hintStyle: TextStyle(
                            //     color: Colors.grey
                            //   ),
                            //       prefixIcon: Icon(Icons.phone, color: Colors.grey,)
                            //   ),
                            // ),
                            // Text('Password', style: GoogleFonts.jost(
                            //     textStyle :TextStyle(
                            //         color: appcolor.black,fontSize: 14
                            //     )
                            // ),),
                            // const SizedBox(height: 10),
                            // TextField(
                            //   controller: passwordController,
                            //   obscureText: true,
                            //   decoration: InputDecoration(
                            //     fillColor:  appcolor.black,
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     hintText: 'Enter your password',
                            //     prefixIcon: Icon(Icons.person,color: Colors.grey,)
                            //   ),
                            // ),
                            // SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(''),
                                TextButton(onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder:
                                      (context) => Sign_Ui()));

                                }, child: Text('Register with us !',
                                  style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                      color: appcolor.orange,fontSize: 16)))),],),
                            Row(
                              children: [
                                Expanded(child: ElevatedButton(
                                  onPressed: () {
                                        // _login();
                                  },
                                  child: Text('Login',style: GoogleFonts.jost(
                                    textStyle : TextStyle(
                                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        )),
                                    backgroundColor: MaterialStateProperty.all(appcolor.orange)),)),],)
                          ],
                        ),
                        // SizedBox(height: 180,),
                        // Padding(
                        //   padding: const EdgeInsets.only(bottom: 0.0),
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           const Text(
                        //             'Helpline No.: ',
                        //             style: TextStyle(
                        //               color: appcolor.orange,
                        //               fontWeight: FontWeight.bold,
                        //             ),
                        //           ),
                        //           GestureDetector(
                        //             onTap: () {},
                        //             child: const Text(
                        //               '+91 8598765443',
                        //               style: TextStyle(
                        //                 color: CupertinoColors.activeBlue,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           const Text(
                        //             'Email ID. ',
                        //             style: TextStyle(
                        //               color: appcolor.orange,
                        //               fontWeight: FontWeight.bold,
                        //             ),
                        //           ),
                        //           GestureDetector(
                        //             onTap: () {},
                        //             child: const Text(
                        //               'deep@1234gmail.com',
                        //               style: TextStyle(
                        //                 color: CupertinoColors.activeBlue,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(height: 165),
                        Container(
                         // margin: EdgeInsets.symmetric(horizontal: 90),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 30, right: 0),

                                width: 250,height: 25,// Set padding to zero
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero, // Set contentPadding to zero
                                  title: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Helpline No: ',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(color: appcolor.black,fontWeight: FontWeight.w600,fontSize: 14),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '+91 8598765443',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(color: appcolor.orange,fontWeight: FontWeight.w600,fontSize: 14),
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => _launchPhone('+918598765443'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0), // Add SizedBox for spacing
                              Container(
                                padding: EdgeInsets.only(left: 90, right: 0), // Set padding to zero
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero, // Set contentPadding to zero
                                  title: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Email ID: ',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(color: appcolor.black,fontWeight: FontWeight.w600,fontSize: 14),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'deep@1234gmail.com',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(color: appcolor.orange,fontWeight: FontWeight.w600,fontSize: 14
                                            ),
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () => _launchEmail('deep@1234gmail.com'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],),
                  ),
                             ),
               ],
             ),

      
        ),
      ),
    );
  }
  // void _login() async {
  //   if (phoneNumberController.text.isEmpty ||
  //       phoneNumberController.text[0] != '6') {
  //     _showErrorSnackbar(
  //         'Please enter a valid phone number starting with 6 or more.');
  //     return;
  //   }
  //   // if (passwordController.text.isEmpty) {
  //   //   _showErrorSnackbar('Please enter your password');
  //   //   return;
  //   // }
  //   var data = {
  //     "email_or_mobile": phoneNumberController.text,
  //     // "password": passwordController.text,
  //   };
  //
  //   var apiUrl = 'https://qbacp.com/Sarthi-dashboard/api/login';
  //
  //   var response = await http.post(
  //     Uri.parse(apiUrl),
  //     headers: {
  //       'Content-Type': 'application/json',
  //     },
  //     body: jsonEncode(data),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     print('API request successful');
  //     print(response.body);
  //   } else {
  //     print('Failed to make API request');
  //     print('Status Code: ${response.statusCode}');
  //     print('Response Body: ${response.body}');
  //   }
  // }

  void _showErrorSnackbar(String s) {

  }
  void _launchPhone(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to launch email
  void _launchEmail(String email) async {
    String url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
// class _IndianMobileNumberFormatter extends TextInputFormatter{
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//    if(newValue.text.length == 5 || newValue.text.length == 9){
//      return newValue.copyWith(
//        text: '${newValue.text}',
//        selection: TextSelection.collapsed(
//          offset: newValue.selection.end + 1,),
//      );
//    }
//   return newValue;
//   }
//
// }
