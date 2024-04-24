import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitUi extends StatefulWidget {
  const VisitUi({Key? key}) : super(key: key);

  @override
  State<VisitUi> createState() => _VisitUiState();
}

class _VisitUiState extends State<VisitUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Visit Ui',style: GoogleFonts.jost(
          textStyle : TextStyle(
              color: Colors.black, fontSize: 20))),
        centerTitle: true,
      ),
    );
  }
}
