// import 'dart:convert';
// import 'package:digital_discom/app/ui/terms_ui.dart';
// import 'package:http/http.dart' as http;
// import 'package:digital_discom/app/global/appcolor.dart';
// import 'package:digital_discom/app/ui/otp_ui.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
//
// import 'login_ui.dart';
//
// class Sign_Ui extends StatefulWidget {
//   const Sign_Ui({Key? key}) : super(key: key);
//
//   @override
//   State<Sign_Ui> createState() => _Sign_UiState();
// }
//
// class _Sign_UiState extends State<Sign_Ui> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneNumberController = TextEditingController();
//  // TextEditingController passwordController = TextEditingController();
//
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/images/energy_back.jpeg',
//               ),
//               fit: BoxFit.fill),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Form(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     IconButton(onPressed: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginUi()));
//                     }, icon: Icon(Icons.arrow_back_ios_rounded,color: appcolor.black)),
//                     SizedBox(height: 100),
//                     //SizedBox(height: 173),
//                     Center(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Let's",style: GoogleFonts.jost(
//                             textStyle: TextStyle(
//                                 color: appcolor.black,
//                                 fontSize: 32,fontWeight: FontWeight.w600))),
//                           Text('   Create your Profile',style: GoogleFonts.jost(
//                             textStyle: TextStyle(
//                                 color: appcolor.black,
//                                 fontSize: 35,fontWeight: FontWeight.w600
//                             ),
//                           ) ,),
//                           Text('Welcome Back! Please Enter Your Details',
//                             style: TextStyle(fontSize: 18,
//                               color: Colors.grey.shade400),),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Text('Name',style: GoogleFonts.jost(
//                       textStyle: TextStyle(
//                           color: appcolor.black,
//                           fontSize: 16,fontWeight: FontWeight.w600
//                       ),
//                     ) ,),
//                     SizedBox(height: 8,),
//                     TextField(
//                       controller: nameController,
//                       decoration: InputDecoration(
//                         fillColor: appcolor.black,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(
//                               color: Colors.grey.shade400,
//                               width: 2.0,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             borderSide: BorderSide(color: Colors.grey, width: 1),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                               borderSide: BorderSide(width: 1,color: Colors.red),borderRadius: BorderRadius.circular(10)
//                           ),
//                         hintText: 'Enter your name',hintStyle: TextStyle(color: Colors.grey),
//                           prefixIcon: Icon(Icons.person,color: appcolor.orange,)
//                       ),
//                     ),
//
//
//                     // TextField(
//                     //   decoration: InputDecoration(
//                     //     border: OutlineInputBorder(
//                     //         borderRadius: BorderRadius.circular(10)),
//                     //     hintText: "Deepak",hintStyle: TextStyle( color: Colors.grey),
//                     //     prefixIcon: Icon(Icons.person,color: Colors.grey,)),),
//                     SizedBox(height: 10,),
//                     Text('Phone Number',style: GoogleFonts.jost(
//                       textStyle: TextStyle(
//                           color: appcolor.black,
//                           fontSize: 16,fontWeight: FontWeight.w600
//                       ),
//                     ) ,),
//                     SizedBox(height: 8,),
//                     // Container(
//                     //   child: Container(
//                     //     child: IntlPhoneField(
//                     //       controller: phoneNumberController,
//                     //       initialCountryCode: 'IN',
//                     //       textAlignVertical: TextAlignVertical.bottom,
//                     //       decoration: InputDecoration(
//                     //         contentPadding:
//                     //         const EdgeInsets.symmetric(vertical: 16),
//                     //         counterText: '',
//                     //         hintText: "Enter your Phone number",
//                     //         hintStyle: TextStyle(
//                     //           fontSize: 16,
//                     //           fontWeight: FontWeight.w400,
//                     //           color: appcolor.black,
//                     //         ),
//                     //         focusedBorder: OutlineInputBorder(
//                     //           borderRadius: BorderRadius.circular(12),
//                     //           borderSide: BorderSide(
//                     //             color:  appcolor.black,
//                     //             width: 1.0,
//                     //           ),
//                     //         ),
//                     //         enabledBorder: OutlineInputBorder(
//                     //           borderRadius: BorderRadius.circular(12),
//                     //           borderSide: BorderSide(
//                     //             color: appcolor.black,
//                     //             width: 1.0,
//                     //           ),
//                     //         ),
//                     //         errorBorder: OutlineInputBorder(
//                     //           borderRadius: BorderRadius.circular(12),
//                     //           borderSide: BorderSide(
//                     //             color: Colors.red,
//                     //             width: 1.0,
//                     //           ),
//                     //         ),
//                     //         focusedErrorBorder: OutlineInputBorder(
//                     //           borderRadius: BorderRadius.circular(12),
//                     //           borderSide: BorderSide(
//                     //             color: Colors.red,
//                     //             width: 1.0,
//                     //           ),
//                     //         ),
//                     //       ),
//                     //       keyboardType: TextInputType.phone,
//                     //       inputFormatters: [LengthLimitingTextInputFormatter(10)],
//                     //     ),
//                     //   ),
//                     // ),
//                     TextField(
//                       controller: phoneNumberController,
//                       keyboardType: TextInputType.number,
//                       inputFormatters: [
//                         LengthLimitingTextInputFormatter(12),
//                         _IndianMobileNumberFormatter(),
//                       ],
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                         hintText: "Enter your phone number", hintStyle: TextStyle(color: Colors.grey,),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color: Colors.grey.shade400,
//                             width: 2.0,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(width: 1,color: Colors.red),borderRadius: BorderRadius.circular(10)
//                         ),
//                         prefixIcon: Icon(Icons.phone, color: appcolor.orange,),
//                       ),
//
//                     ),
//                     SizedBox(height: 10,),
//                     Text('Email ID',style: GoogleFonts.jost(
//                       textStyle: TextStyle(
//                           color: appcolor.black,
//                           fontSize: 16,fontWeight: FontWeight.w600
//                       ),
//                     ) ,),
//                     SizedBox(height: 8,),
//                     TextField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         fillColor: appcolor.black,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                             color: Colors.grey.shade400,
//                             width: 2.0,
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide(width: 1,color: Colors.red),borderRadius: BorderRadius.circular(10)
//                         ),
//                         hintText: 'Enter your e-mail ID ',hintStyle: TextStyle(color: Colors.grey),
//                         prefixIcon: Icon(Icons.email,color: appcolor.orange,),
//
//                       ),
//                     ),
//                     // SizedBox(height: 10,),
//                     // Text('Password',style: GoogleFonts.jost(
//                     //   textStyle: TextStyle(
//                     //       color: appcolor.black,
//                     //       fontSize: 16,fontWeight: FontWeight.w600
//                     //   ),
//                     // ) ,),
//                     // SizedBox(height: 8,),
//                     // TextField(
//                     //   controller: passwordController,
//                     //   obscureText: true,
//                     //   decoration: InputDecoration(
//                     //     fillColor: appcolor.black,
//                     //     border: OutlineInputBorder(
//                     //       borderRadius: BorderRadius.circular(10),
//                     //     ),
//                     //     hintText: 'Enter your password',
//                     //     prefixIcon: Icon(Icons.lock,color: Colors.grey,),
//                     //
//                     //   ),
//                     // ),
//                     // TextFormField(
//                     //   decoration: InputDecoration(
//                     //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//                     //       hintText: "example@gmail.com",hintStyle:
//                     //   TextStyle(color: Colors.grey),
//                     //       prefixIcon: Icon(Icons.email,color: Colors.grey,)
//                     //   ),
//                     //   validator: (username) {
//                     //     if (username == null || username.isEmpty == true) {
//                     //       return "Email should not be empty";
//                     //     }
//                     //     return null;
//                     //   },
//                     // ),
//                     Row(
//                       //mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Checkbox(
//                           value: isChecked,
//                           activeColor: appcolor.orange,
//                           onChanged: (value) {
//                             setState(() {
//                               isChecked= value!;
//                             });
//                           },
//                         ),
//                          TextButton(
//                            onPressed: () {
//                              showDialog(context: context,
//                                  builder: (BuildContext context){
//                                return Terms_ui();
//                                  }
//                              );
//                              // Navigator.push(context, MaterialPageRoute(
//                              //     builder: (context) => Terms_ui()));
//
//                            }, child: Text('I Agree Terms & Condition of Energy Book',
//                            style: TextStyle(
//                              color: appcolor.black,
//                              fontWeight: FontWeight.w500,
//                            ),),
//                         ),
//                       ],
//                     ),
//                     // Row(
//                     //   children: [
//                     //     Checkbox(value: isChecked,
//                     //         activeColor: appcolor.orange,
//                     //         onChanged: (newBool){
//                     //       setState(() {
//                     //         isChecked = newBool!;
//                     //       });
//                     //     }),
//                     //     Text('I Agree Terms & Condition of Energy Book',style: GoogleFonts.jost(
//                     //       textStyle: TextStyle(
//                     //           color: appcolor.black,
//                     //           fontSize: 14,
//                     //       ),
//                     //     ) ,),
//                     //   ],
//                     // ),
//                     Row(
//                       children: [
//
//                         Expanded(
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 _signUp();
//                                },
//                               child: Text(
//                                 "Sign Up",
//                                 style: TextStyle(color: Colors.white,fontSize:25 ),
//                               ),
//                               style: ButtonStyle(
//                                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(10)
//                                       )
//                                   ),
//                                   backgroundColor:
//                                   MaterialStateProperty.all(appcolor.orange)),
//
//                             )),
//                       ],
//                     ),
//                     Row(mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Have an account?',style:
//                         TextStyle(color: appcolor.black,
//                           fontSize: 20,),),
//                         TextButton(onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => OtpUi()));
//                         }, child: Text('Login',style:
//                         TextStyle(color: appcolor.orange,
//                             fontSize: 26,fontWeight: FontWeight.bold),),)
//                       ],),
//
//
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   void _signUp() async {
//     // Validate input fields
//     if (nameController.text.isEmpty) {
//       _showErrorSnackbar('Please enter your name');
//       return;
//     }
//     if (emailController.text.isEmpty) {
//       _showErrorSnackbar('Please enter your email');
//       return;
//     }
//     if (phoneNumberController.text.isEmpty ||
//         phoneNumberController.text[0] != '6') {
//       _showErrorSnackbar(
//           'Please enter a valid phone number starting with 6 or more.');
//       return;
//     }
//     // if (passwordController.text.isEmpty) {
//     //   _showErrorSnackbar('Please enter your password');
//     //   return;
//     // }
//
//     // Check terms agreement
//     if (isChecked!) {
//       _showErrorSnackbar('Please agree to terms & conditions');
//       return;
//     }
//
//     var data = {
//       "name": nameController.text,
//       "email": emailController.text,
//       "phone_number": phoneNumberController.text,
//       // "password": passwordController.text,
//     };
//
//     // API endpoint URL
//     var apiUrl = 'http://qbacp.com/Sarthi-dashboard/api/users';
//
//     // Make the POST request
//     var response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(data),
//     );
//
//     // Check the response status code
//     if (response.statusCode == 200) {
//       // Request successful, do something with the response
//       print('API request successful');
//       print(response.body);
//     } else {
//       // Request failed
//       print('Failed to make API request');
//       print('Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');
//     }
//   }
//
//   void _showErrorSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         action: SnackBarAction(
//           label: 'OK',
//           onPressed: () {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//           },
//         ),
//       ),
//     );
//   }
// }
// class _IndianMobileNumberFormatter extends TextInputFormatter{
//   @override
//   TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
//     if( newValue.text.length == 5 || newValue.text.length == 9){
//       return newValue.copyWith(
//         text: '${newValue.text}',
//         selection: TextSelection.collapsed(offset:
//         newValue.selection.end + 1),
//       );
//     }
//     return newValue;
//   }
//
// }
import 'dart:convert';
import 'package:digital_discom/app/drawer/items_ui/terms_ui.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'login_ui.dart';
import 'otp_ui.dart';

class Sign_Ui extends StatefulWidget {
  const Sign_Ui({Key? key}) : super(key: key);

  @override
  State<Sign_Ui> createState() => _Sign_UiState();
}

class _Sign_UiState extends State<Sign_Ui> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/energy_back.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginUi()));
                    },
                    icon: Icon(
                        Icons.arrow_back_ios_rounded, color: appcolor.black)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(color: appcolor.black,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                '   Create your Profile',
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(color: appcolor.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                '    Welcome Back! Please Enter Your Details',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Name',
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(color: appcolor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            fillColor: appcolor.black,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Enter your name',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: SizedBox(height: 16, width: 14,
                                child: Icon(
                                  Icons.person, color: appcolor.orange,)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Mobile Number',
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(color: appcolor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 8),
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
                            hintText: "Enter your mobile number",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              // Adjust padding as needed
                              child: Image.asset(
                                'assets/images/flag.png',
                                // Path to your image asset
                                width: 10, // Adjust width as needed
                                height: 10, // Adjust height as needed
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          'Email ID',
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(color: appcolor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: appcolor.black,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.grey, width: 1),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Enter your e-mail ID ',
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                                Icons.email, color: appcolor.orange),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: appcolor.orange,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text('I Agree', style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                color: appcolor.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,

                              ),),),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(

                                      title: Text('Term & Condition ',
                                        style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                                color: appcolor.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            Text(
                                              "It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).",
                                              style: GoogleFonts.jost(
                                                  textStyle: TextStyle(
                                                    color: appcolor.black,
                                                    fontSize: 16,
                                                  )
                                              ),),
                                            SizedBox(height: 10),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Text('Important',
                                                  style: GoogleFonts.jost(
                                                      textStyle: TextStyle(
                                                          color: appcolor.black,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight
                                                              .w600
                                                      )
                                                  ),),
                                                SizedBox(height: 10,),
                                                Text(
                                                  "It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).",
                                                  style: GoogleFonts.jost(
                                                      textStyle: TextStyle(
                                                        color: appcolor.black,
                                                        fontSize: 18,
                                                      )
                                                  ),),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Text('Important',
                                                  style: GoogleFonts.jost(
                                                      textStyle: TextStyle(
                                                          color: appcolor.black,
                                                          fontSize: 22,
                                                          fontWeight: FontWeight
                                                              .w600
                                                      )
                                                  ),),
                                                SizedBox(height: 10,),
                                                Text(
                                                  "It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).",
                                                  style: GoogleFonts.jost(
                                                      textStyle: TextStyle(
                                                        color: appcolor.black,
                                                        fontSize: 18,
                                                      )
                                                  ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              isChecked =
                                              true; // Automatically check the checkbox
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Accept'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child:
                              Text(
                                  'Terms and conditions.',
                                  style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                      color: appcolor.orange,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),)
                              ),
                            ),
                            // Text(
                            //     'of Emergy book.',
                            //     style: GoogleFonts.jost(
                            //       textStyle: TextStyle(
                            //         color: appcolor.black ,
                            //         fontWeight: FontWeight.w500,
                            //         fontSize: 15,
                            //       ),)
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                 // _signUp();
                                },
                                child: Text(
                                  "Sign Up",
                                  style: GoogleFonts.jost(
                                      textStyle: TextStyle(color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      appcolor.orange),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Have an account?',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                    color: appcolor.black,
                                    fontSize: 16,
                                  )),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => OtpUi()));
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(color: appcolor.orange,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//   void _signUp() async {
//     // Validate input fields
//     if (nameController.text.isEmpty) {
//       _showErrorSnackbar('Please enter your name');
//       return;
//     }
//     if (emailController.text.isEmpty) {
//       _showErrorSnackbar('Please enter your email');
//       return;
//     }
//     if (phoneNumberController.text.isEmpty || phoneNumberController.text[0] != '6') {
//       _showErrorSnackbar('Please enter a valid phone number starting with 6 or more.');
//       return;
//     }
//
//     // Check terms agreement
//     if (!isChecked) {
//       _showErrorSnackbar('Please agree to terms & conditions');
//       return;
//     }
//
//     var data = {
//       "name": nameController.text,
//       "email": emailController.text,
//       "phone_number": phoneNumberController.text,
//     };
//
//     // API endpoint URL
//     //var apiUrl = 'http://qbacp.com/Sarthi-dashboard/api/users';
//
//     // Make the POST request
//     // var response = await http.post(
//     //   Uri.parse(apiUrl),
//     //   headers: {
//     //     'Content-Type': 'application/json',
//     //   },
//     //   body: jsonEncode(data),
//     // );
//
//     // Check the response status code
//   //   if (response.statusCode == 200) {
//   //     // Request successful, do something with the response
//   //     print('API request successful');
//   //     print(response.body);
//   //   } else {
//   //     // Request failed
//   //     print('Failed to make API request');
//   //     print('Status Code: ${response.statusCode}');
//   //     print('Response Body: ${response.body}');
//   //   }
//   // }
//
//   void _showErrorSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         action: SnackBarAction(
//           label: 'OK',
//           onPressed: () {
//             ScaffoldMessenger.of(context).hideCurrentSnackBar();
//           },
//         ),
//       ),
//     );
//   }
// }
//
//   class _IndianMobileNumberFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
//   if (newValue.text.length == 5 || newValue.text.length == 9) {
//   return newValue.copyWith(
//   text: '${newValue.text}',
//   selection: TextSelection.collapsed(offset: newValue.selection.end + 1),
//   );
//   }
//   return newValue;
//   }
//   }
}
