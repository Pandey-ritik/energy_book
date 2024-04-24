import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_discom/app/ui/home_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({Key? key}) : super(key: key);

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us',style: GoogleFonts.jost(
          textStyle : TextStyle(
              color: Colors.black, fontSize: 20))),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home_Ui()),
                    (route) => false, // Remove all routes
              ).then((_) {
               // print("Logout button pressed, showing toast message.");
              });
            },
            icon: Icon(
                Icons.arrow_back_ios_rounded, color: appcolor.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),

                _carouselSlider(),
                SizedBox(height: 20,),
              Text('About Eergy Book',style: GoogleFonts.jost(
                  textStyle : TextStyle(
                      color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600))),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),
              SizedBox(height: 20,),
              Text("It is a long established fact that a reader will be distracted by thereadable content of a page when looking at its layout. The pointof using Lorem Ipsum is that it has a more-or-less normal distributionof letters, as opposed to using 'Content here, content here', makingit look like readable English. Many desktop publishing packages andweb page editors now use Lorem Ipsum as their default model text,and a search for 'lorem ipsum' will uncover many web sites still intheir infancy. Various versions have evolved over the years,sometimes by accident, sometimes on purpose (injected humourand the like).", style: GoogleFonts.jost(
                  textStyle :TextStyle(
                    color: appcolor.black,fontSize: 18,
                  )
              ),),
          
            ],
          ),
        ),
      ),
    );
  }
   Widget _carouselSlider() {
    return Column(
      children: [
        Container(
          width: 390,
          child: CarouselSlider(
            options: CarouselOptions(
                disableCenter: true,
                height: 150,
                // Adjust the height as needed
                autoPlay: true,
                // Set to true for auto-playing the slider
                enlargeCenterPage: true,
                // Set to true to increase the center item size
                //aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                autoPlayCurve: Curves.fastOutSlowIn,
                // Animation curve for auto-play
                enableInfiniteScroll: true,
                // Set to false to disable infinite scroll
                autoPlayInterval: Duration(seconds: 3),
                // Time interval for auto-play
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                // Animation duration for auto-play
                viewportFraction: 1,
                // animateToClosest: true,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentIndex = index;
                  });
                } // Fraction of the viewport to show
            ),
            items: [
              _buildRoundedImage('assets/images/about.png'),
              _buildRoundedImage('assets/images/about.png'),
              _buildRoundedImage('assets/images/about.png'),
              _buildRoundedImage('assets/images/about.png'),
            ],
          ),
        ),
        // DotsIndicator(
        //   dotsCount: 5,
        //   position: _currentIndex, // Use _currentIndex directly
        //   decorator: DotsDecorator(
        //     size: const Size.square(8.0),
        //     activeSize: const Size(20.0, 8.0),
        //     activeColor: appcolor.orange,
        //     activeShape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(5.0),
        //     ),
        //   ),
        // ),
      ],
    );
  }
  
  Widget _buildRoundedImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(imageUrl, fit: BoxFit.cover,),
      ),

    );
  }
}
