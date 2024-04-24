import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digital_discom/app/global/appcolor.dart';

class EnquiryHistory extends StatefulWidget {
  const EnquiryHistory({super.key});

  @override
  State<EnquiryHistory> createState() => _EnquiryHistoryState();
}

class _EnquiryHistoryState extends State<EnquiryHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry History',
            style: GoogleFonts.jost(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500))),
        elevation: 5,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search Here..',
                      hintStyle: GoogleFonts.jost(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: appcolor.orange,
                      ), // Search Icon
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add Enquiry",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => appcolor.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: BorderSide(color: appcolor.orange),
                          borderRadius: BorderRadius.circular(10),
                        ))))
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width,
      
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
              return EnquiryHistory();
            }),
          )
        ],
      ),
    );
  }

  Widget EnquiryHistory() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.165,
        width: MediaQuery.of(context).size.width,
        // color: Colors.green,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Enquiry ID',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(width: 25),
                      Text(
                        'XXXXXXXX',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  Text(
                    '23/04/24',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(width: 35),
                  Text(
                    'Residental',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Plant  Load',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(width: 25),
                      Text(
                        '2 KM',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: Text(
                          "View",
                          style: GoogleFonts.lato(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => appcolor.orange),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            side: BorderSide(color: appcolor.orange),
                            borderRadius: BorderRadius.circular(10),
                          ))))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
