import 'package:digital_discom/app/global/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(

        children: [
          Icon(Icons.arrow_back_ios_new_outlined,size: 15,),
          SizedBox(width: 100,),
          Text('Social Media',style: GoogleFonts.jost(
              textStyle : TextStyle(
                  color: Colors.black, fontSize: 18))),
        ],
      ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(child: Image.asset("assets/images/sliderone.jpg")),
            SizedBox(height: 200,),
            Container(
              height: 37,
              width: 303,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: appcolor.orange
              ),
              child: Center(
                child: Text("Veiw see",style: GoogleFonts.jost(
                    textStyle: TextStyle(fontSize: 18,color: Colors.white)),),
              ),
            ),
          ],),
      ),
    );
  }
}