import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ui/home_ui.dart';

class PrivacyUi extends StatefulWidget {
  const PrivacyUi({Key? key}) : super(key: key);

  @override
  State<PrivacyUi> createState() => _PrivacyUiState();
}

class _PrivacyUiState extends State<PrivacyUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Privacy Policy',style: GoogleFonts.jost(
          textStyle : TextStyle(
              color: Colors.black, fontSize: 20))),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home_Ui()),
                    (route) => false, // Remove all routes
              ).then((_) {
                // print("Logout button pressed, showing toast message.");
              });
            },
            icon: Icon(
                Icons.arrow_back_ios_rounded, color: appcolor.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Privacy Policy Emergy Book',style: GoogleFonts.jost(
                  textStyle : TextStyle(
                      color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600))),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
