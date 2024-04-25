import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digital_discom/app/global/appcolor.dart';

class Categories extends StatefulWidget {
   Categories({super.key , this.img , required this.name});
  var img;
  String name;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width * 0.24,
      height: MediaQuery.of(context).size.height * 0.04,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        color: Colors.orange[50], // Background color of the container
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Icon(
           widget.img,
            color: appcolor.orange,
            size: 25,
          ), // Icon
          // SizedBox(width: 10), // Add some space between icon and text
          Text(
            widget.name,
            style: GoogleFonts.jost(
              textStyle: TextStyle(
                color: appcolor.black, // Text color
                fontSize: 14,
                // fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
