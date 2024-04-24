
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

showtoast(msg){
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

appbars(text,context){
  return   AppBar(
    elevation: 5.0,
    shadowColor: Colors.white,
    title: Row(
      children: [
        InkWell(
            onTap: (){
              Navigator.pop(context);
              // push(context,
              //     MaterialPageRoute(builder: (context) => pagename()));

            },
            child: Icon(Icons.arrow_back_ios_new_outlined,size: 20,)),
        SizedBox(width: 120,),
        Text(text,style: GoogleFonts.jost(textStyle: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w500 )),)
      ],
    ),

    automaticallyImplyLeading: false,
  );
}
