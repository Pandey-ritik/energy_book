import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ui/login_ui.dart';

class EnquiryUi extends StatefulWidget {
  const EnquiryUi({Key? key}) : super(key: key);

  @override
  State<EnquiryUi> createState() => _EnquiryUiState();
}

class _EnquiryUiState extends State<EnquiryUi> {
  String dropdownvalue = 'Risidentail';
  var items = [
    'Risidentail',
    'Commercial',
    'Industial',
    'Agricultural',
  ];
  String structvalue = 'Risidentail';
  var struct = [
    'Risidentail',
    'Commercial',
    'Industial',
    'Agricultural',
  ];
  // String dropdownvalue = 'Risidentail';
  // var items = [
  //   'Risidentail',
  //   'Commercial',
  //   'Industial',
  //   'Agricultural',
  // ];
  // String dropdownvalue = 'Risidentail';
  // var items = [
  //   'Risidentail',
  //   'Commercial',
  //   'Industial',
  //   'Agricultural',
  // ];
  String plartvalue = 'Risidentail';
  var plant = [
    'Within next 7 days',
    'Within next 30 days',
    'Within next 60 days',
    'Agricultural',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enquiry',style: GoogleFonts.jost(
          textStyle : TextStyle(
              color: Colors.black, fontSize: 20))),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Category',style: GoogleFonts.jost(
              textStyle : TextStyle(
                  color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400, // Choose your border color
                  width: 1.0, // Choose the border width
                ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('Plant Load',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Text('Subsidy',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Text('Finance Required',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            SizedBox(height: 10,),
            Text('Structure Type',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),

            Text('Solar Panel Type',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('Panel Brand Choice',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('Inverter Brand Choice',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('When You To Book The Plant',style: GoogleFonts.jost(
                textStyle : TextStyle(
                    color: Colors.black, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    hintText: "Category",
                    border: InputBorder.none,
                  ), // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: GoogleFonts.jost(textStyle: TextStyle(
                          fontSize: 15)),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  // onPressed: () {
                  //   Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => LoginUi()),
                  //         (route) => false, // Remove all routes
                  //   );
                  //   // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginUi()));
                  // },
                  onPressed: () {
                    // Navigate to the login screen and remove all previous routes from the stack
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginUi()),
                          (route) => false, // Remove all routes
                    ).then((_) {
                      print("Logout button pressed, showing toast message.");
                    });
                  },
                  child: Text(
                    "   Save Draft   ",
                    style: GoogleFonts.jost(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xffcc8b54)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "      Submit     ",
                    style: GoogleFonts.jost(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        
          ],
        ),
      ),
    );
  }
}
