import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  const BottomBar({Key? key, required this.pageIndex, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,right: 16,
      ),
      child: BottomAppBar(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            color: Colors.orange,
            child: Row(
               children: [

               ],
            ),


          ),
        ),
      ),

    );
  }
  // Widget BottomBar(IconData icon, bool selected,
  // {Function()? onTap}){
  //   return
  //
  // }
}
