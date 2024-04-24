
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:digital_discom/app/global/reuseble_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class compliantPage extends StatefulWidget {
  const compliantPage({super.key});

  @override
  State<compliantPage> createState() => _compliantPageState();
}

class _compliantPageState extends State<compliantPage> {
  List<String> datetext=[
    "10/04/2024",
    "09/04/2024",
    "07/04/2024",
    "06/04/2024",
    "04/04/2024",
    "02/04/2024",
  ];
  List<String> text=[
    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"
        "\nof letters, as opposed to using 'Content here, content here', making.",

    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"
        "\nof letters, as opposed to using 'Content here, content here', making.",

    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"

        "\nof letters, as opposed to using 'Content here, content here', making.",
    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"
        "\nof letters, as opposed to using 'Content here, content here', making.",

    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"
        "\nof letters, as opposed to using 'Content here, content here', making.",

    "It is a long established fact that a reader will be distracted by the"
        "\nreadable content of a page when looking at its layout. The point"
        "\nof using Lorem Ipsum is that it has a more-or-less normal distribution"
        "\nof letters, as opposed to using 'Content here, content here', making.",
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:
      appbars("Compliants", context),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0 , top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: appcolor.orange,
                    ),
                    child: Center(
                      child: Text('Add',style: GoogleFonts.jost(textStyle: TextStyle(
                          color: appcolor.white,fontSize: 19
                      )),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(datetext[index],style: GoogleFonts.jost(textStyle: TextStyle(fontSize: 17,
                              color:Color.fromRGBO(39, 39, 91, 100) )),),
                          SizedBox(height: 5,),
                          Text(
                            text[index],
                            style: GoogleFonts.jost(textStyle: TextStyle(fontSize: 14,
                            )),),
                          Padding(
                            padding: const EdgeInsets.only(left: 295,top: 5),
                            child: Text("More",style: GoogleFonts.jost(textStyle: TextStyle(fontSize: 14,
                                color:Color.fromRGBO(39, 39, 91, 100),fontWeight: FontWeight.w600 )),),
                          ),
                        ],
                      );
                    }),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
