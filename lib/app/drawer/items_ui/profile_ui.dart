import 'dart:io';

import 'package:digital_discom/app/global/appcolor.dart';
import 'package:digital_discom/app/global/reuseble_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

import '../../ui/otp_ui.dart';

class ProfileUi extends StatefulWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {

  final controllertextname = TextEditingController();
  final controllertextphone = TextEditingController();
  final controllertextemail = TextEditingController();
  final pinCodeController = TextEditingController();
  final controllertextaddrees = TextEditingController();
  final controllertextlandM = TextEditingController();
  final controllertextloca = TextEditingController();
  String dropdownvalue = 'Risidentail';
  var validator=0;
  String pinCodeDetails = "";
  File? selectedImage;
  String base64Image = '';

  Future<void> chooseImage(type) async{
    var image;
    if(type=="Gallery") {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }
    else{}
    if(image !=null){
      setState(() {
        selectedImage= File(image.path);
        base64Image=base64Encode(selectedImage!.readAsBytesSync());
      });
    }
  }


  var items = [
    'Risidentail',
    'Commercial',
    'Industial',
    'Agricultural',
  ];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      appbars("Profile", context),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 140),
                  SizedBox(
                    height: 78,width: 78,
                    child: InkWell(
                      onTap: (){
                        chooseImage("Gallery");
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/mohit.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90,bottom: 50 , right: 30),
                    child: InkWell(
                        onTap: (){

                        },
                        child: Image.asset("assets/images/editicon.png",))
                    //Image.asset("assets/icons/editicon.png",height: 21,width: 21),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",style: GoogleFonts.jost(
                          textStyle: TextStyle(fontSize: 16,)
                      ),),
                      SizedBox(height: 3,),
                      Container(
                       height: 34,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child:
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            controller: controllertextname,
                            keyboardType: TextInputType.name,
                            cursorHeight: 0,
                            decoration: InputDecoration(
                              hintText: "",
                              border: InputBorder.none,
                            ),

                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Phone Number",style: GoogleFonts.jost(
                          textStyle: TextStyle(fontSize: 16,)
                      ),),
                      SizedBox(height: 3,),
                      Container(
                        height: 34,
                       width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            controller: controllertextphone,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            cursorHeight: 0,
                            decoration: InputDecoration(
                              counterText: "",
                              hintText: "",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("E-mail",style: GoogleFonts.jost(
                          textStyle: TextStyle(fontSize: 16,)
                      ),),
                      SizedBox(height: 3,),
                      Container(
                        height: 34,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            controller: controllertextemail,
                            keyboardType: TextInputType.emailAddress,
                            cursorHeight: 0,
                            decoration: InputDecoration(
                              hintText: "",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const OtpUi()),
                                );
                              },
                              child: Text("Verified by OTP",style: GoogleFonts.jost(
                                  textStyle: TextStyle(fontSize: 12,color: Colors.orange)
                              ),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text("Category",style: GoogleFonts.jost(
                              textStyle: TextStyle(fontSize: 16,)
                          ),),
                          SizedBox(width: 130,),
                          Text("PIN Code",style: GoogleFonts.jost(
                              textStyle: TextStyle(fontSize: 16,)
                          ),),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Container(
                            height: 37,
                           width: MediaQuery.of(context).size.width*0.432,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 3),
                              child:
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  hintText: "",
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
                          SizedBox(width: 10,),
                          Container(
                            height: 37,
                            width: MediaQuery.of(context).size.width*0.432,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child:Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10),
                              child: TextFormField(
                                controller: pinCodeController,
                                maxLength: 6,
                                keyboardType: TextInputType.phone,
                                cursorHeight: 0,
                                decoration: InputDecoration(
                                  counterText: "",
                                  hintText: '',
                                  border: InputBorder.none,
                                ),
                                onTap: (){
                                  getDataFromPinCode(pinCodeController.text);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 34,
                         width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            cursorHeight: 0,
                            //cursorColor: Colors.black26,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: pinCodeDetails,
                              hintStyle: GoogleFonts.jost(textStyle: TextStyle(fontSize: 15))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Address",style: GoogleFonts.jost(
                          textStyle: TextStyle(fontSize: 16,)
                      ),),
                      SizedBox(height: 3,),
                      Container(
                        height: 70,
                         width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: TextFormField(
                          //maxLength: 60,
                          maxLines: 3,
                          minLines: 2,
                          controller: controllertextaddrees,
                          keyboardType: TextInputType.multiline,
                          cursorHeight: 0,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                            hintText: "",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Land Mark",style: GoogleFonts.jost(
                          textStyle: TextStyle(fontSize: 16,)
                      ),),
                      SizedBox(height: 3,),
                      Container(
                        height: 34,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            controller: controllertextlandM,
                            //controller: controllertextname,
                            keyboardType: TextInputType.multiline,
                            cursorHeight: 0,
                            decoration: InputDecoration(
                              hintText: "",
                              //  errorText: _validate ? "Value Can't Be Empty " : null,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location Co-ordinates",style: GoogleFonts.jost(
                              textStyle: TextStyle(fontSize: 16,)
                          ),),
                          // SizedBox(width: 180,),
                          Text("Check",style: GoogleFonts.jost(
                              textStyle: TextStyle(fontSize: 12,color: appcolor.orange)
                          ),),
                        ],
                      ),
                      SizedBox(height: 3,),
                      Container(
                        height: 34,
                         width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Color.fromARGB(59, 59, 59, 23,),width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            controller: controllertextloca,
                            //controller: controllertextname,
                            keyboardType: TextInputType.multiline,
                            cursorHeight: 0,
                            decoration: InputDecoration(
                              hintText: "",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                        if(controllertextname.text.isEmpty){
                          showtoast("Please enter a name");
                        }else if(controllertextphone.text.isEmpty){
                          showtoast("Please enter a phone number");
                        }else if(controllertextemail.text.isEmpty){
                          showtoast("Please enter a phone e-mail");
                        }else if(pinCodeController.text.isEmpty){
                          showtoast("Please enter a phone pin code");
                        }else if(controllertextaddrees.text.isEmpty){
                          showtoast("Please enter a phone address");
                        }else if(controllertextlandM.text.isEmpty){
                          showtoast("Please enter a phone land mark");
                        }else if(controllertextloca.text.isEmpty){
                          showtoast("Please enter a phone location");
                        }
                            setState(() {
                              if (_formKey.currentState!.validate()) {

                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   const SnackBar(content: Text('Processing Data')),
                                // );
                              }

                            });
                        },
                        child: Container(
                          height: 37,
                           width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.orange,
                          ),
                          child:Center(
                            child: Text("Submit",style: GoogleFonts.jost(
                                textStyle: TextStyle(fontSize: 18,color: Colors.white)
                            ),),
                          ),

                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
  Future<void> getDataFromPinCode(String pinCode) async {
    final url = "http://www.postalpincode.in/api/pincode/$pinCode";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        if (jsonResponse['Status'] == 'Error') {
          // Show a snackbar if the PIN code is not valid
          showSnackbar(context, "Pin Code is not valid. ");
          // setState(() {
          //   pinCodeDetails = 'Pin code is not valid.';
          // });
        } else {
          // Parse and display details if the PIN code is valid
          final postOfficeArray = jsonResponse['PostOffice'] as List;
          final obj = postOfficeArray[0];

          final district = obj['District'];
          final state = obj['State'];
          final country = obj['Country'];


          setState(() {
            pinCodeDetails =
            '$district : $state : $country';
          });
        }
      } else {
        // Show a snackbar if there is an issue fetching data
        showSnackbar(context, "Failed to fetch data. Please try again");
        setState(() {
         // pinCodeDetails = 'Failed to fetch data. Please try again.';
        }
        );
      }
    } catch (e) {
      // Show a snackbar if an error occurs during the API call
      showSnackbar(context, "Error Occurred. Please try again");
      setState(() {
      //  pinCodeDetails = 'Error occurred. Please try again.';
      }
      );
    }
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), // Adjust the duration as needed
      ),
    );
  }

}