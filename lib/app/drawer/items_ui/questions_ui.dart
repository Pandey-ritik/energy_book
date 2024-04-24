import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionUi extends StatefulWidget {
  const QuestionUi({Key? key}) : super(key: key);

  @override
  State<QuestionUi> createState() => _QuestionUiState();
}

class _QuestionUiState extends State<QuestionUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Ui',style: GoogleFonts.jost(
          textStyle : TextStyle(
              color: Colors.white, fontSize: 20))),
        centerTitle: true,
      ),
    );
  }
}
