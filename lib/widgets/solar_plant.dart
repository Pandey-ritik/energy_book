import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SolarCategory extends StatefulWidget {
  const SolarCategory({super.key});

  @override
  State<SolarCategory> createState() => _SolarCategoryState();
}

class _SolarCategoryState extends State<SolarCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width *0.46,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/solar.jpg',
              ),
              fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 85,
          ),
          Text(
            'On Grid Solar Plant',
            style: GoogleFonts.jost(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
