import 'package:digital_discom/app/global/reuseble_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digital_discom/app/global/appcolor.dart';

class Terms_ui extends StatelessWidget {
  const Terms_ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbars('Term & Conditions', context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Term & Conditions', style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 18,fontWeight: FontWeight.w600
                    )
                ),),
                SizedBox(height: 10,),
                Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 16,
                    )
                ),),
                SizedBox(height: 15,),
                Text('Important', style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 18,fontWeight: FontWeight.w600
                    )
                ),),
                SizedBox(height: 10,),
                Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 18,
                    )
                ),),
                SizedBox(height: 15,),
                Text('Terms of Use', style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 18,fontWeight: FontWeight.w600
                    )
                ),),
                SizedBox(height: 10,),
                Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                    textStyle :TextStyle(
                        color: appcolor.black,fontSize: 18,
                    )
                ),),

              ],
            ),
          ),
        ),
      ),
    );

  }
}
