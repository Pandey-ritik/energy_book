import 'package:digital_discom/app/ui/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:digital_discom/app/global/appcolor.dart';


import 'login_ui.dart';
class OtpUi extends StatefulWidget {
  const OtpUi({Key? key}) : super(key: key);

  @override
  State<OtpUi> createState() => _OtpUiState();
}

class _OtpUiState extends State<OtpUi> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: TextStyle(fontSize: 20,color: appcolor.black,fontWeight: FontWeight.bold),
      decoration:  BoxDecoration(
        color: appcolor.miniBlue,borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 140,),
                  Center(
                    child: Image(image: AssetImage('assets/images/applogo.png', ),
                      height: 100,width: 241,),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text('OTP Authentication',style:
                        // TextStyle(color: appcolor.black,fontWeight: FontWeight.bold,
                        //     fontSize: 22),),
                        // SizedBox(height: 8,),
                        // Text('An authentication code sent to',style:
                        // TextStyle(
                        //     fontSize: 16),),
                        //
                        // Text('your Phone Number',style:
                        // TextStyle(color: appcolor.black,
                        //     fontSize: 16),),
                        SizedBox(height: 20,),
                        Text('Enter the OTP',style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              color: appcolor.black,
                              fontSize: 20,fontWeight: FontWeight.w600
                          ),
                        ) ,),
                      ],
                    ),
                  ),
                  // Text('Enter OTP',style:
                  // TextStyle(color: appcolor.black,
                  //     fontSize: 18),),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      child: Pinput(
                        length:6,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                                border: Border.all(color: appcolor.miniBlue)
                            )
                        ),
                        onCompleted: (pin) => debugPrint(pin),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Did not recive OTP?',style:
                            TextStyle(color: appcolor.black,
                                fontSize: 14),),
                            TextButton(onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(
                              //     builder: (context)=> HomePage()));

                            }, child: Text('Resend Code',style:
                            TextStyle(color: appcolor.orange,fontWeight: FontWeight.bold,
                                fontSize: 16),),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Home_Ui()));

                                    // if (_formKey.currentState?.validate() == true) {
                                    //   _provider.doLogin();
                                    // }
                                  },
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white,fontSize:18 ),
                                  ),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          )
                                      ),
                                      backgroundColor:
                                      MaterialStateProperty.all(appcolor.orange)),

                                )),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


        ),
      ),
    );
  }
}
