import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BlogTile extends StatefulWidget {
  const BlogTile({super.key});

  @override
  State<BlogTile> createState() => _BlogTileState();
}

class _BlogTileState extends State<BlogTile> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust the radius as needed
                        color: Colors.black12,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/mohit.png'),
                        ),
                        // tileColor: Colors.black12,
                        title: Text(
                          'Prepaying Electricity',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                        ),
                        subtitle: Text(
                          'Prepaying electricity jan 05,2024 Charging for electricity...',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                            // color: Colors.white,
                            fontSize: 16,
                            // fontWeight: FontWeight.w700
                          )),
                        ),
                      ),
                    ),
                  );
  }
}