import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:digital_discom/app/drawer/drawer_ui.dart';
import 'package:digital_discom/app/global/appcolor.dart';
import 'package:digital_discom/widgets/blogs_list.dart';
import 'package:digital_discom/widgets/categories.dart';
import 'package:digital_discom/widgets/solar_plant.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Ui extends StatefulWidget {
  const Home_Ui({Key? key}) : super(key: key);

  @override
  State<Home_Ui> createState() => _Home_UiState();
}

class _Home_UiState extends State<Home_Ui> {
  List category = [
    {'title': 'Residental', 'icon': Icons.home_outlined},
    {'title': 'Commercial', 'icon': Icons.business_outlined},
    {'title': 'Industrial', 'icon': Icons.factory_outlined},
    {'title': 'Agricultural', 'icon': Icons.agriculture_outlined},
  ];

  int _currentIndex = 0;
 @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Builder(
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/energy_back.jpeg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            appBar: _appBar(),
            drawer: Drawer(
              child: MyDrawer(),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.white,
              buttonBackgroundColor: appcolor.orange,
              buttonLabelColor: appcolor.black,
              animationDuration: Duration(milliseconds: 100),
              onTap: (index) {
                print(index);
              },
              items: <CurvedNavigationBarItem>[
                _buildNavItemWithShadow(
                    Icons.add_chart_outlined, 'Enquiry', _currentIndex == 1),
                _buildNavItemWithShadow(
                    Icons.message_outlined, 'Quotations', _currentIndex == 2),
                _buildNavItemWithShadow(
                    Icons.home, '', _currentIndex == 0), // Adjusted icon and label
                _buildNavItemWithShadow(
                    Icons.location_on_outlined, 'Site Visits', _currentIndex == 3),
                _buildNavItemWithShadow(
                    Icons.person, 'My Profile', _currentIndex == 4),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  _carouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Categories(
                              name: category[index]['title'],
                              img: category[index]['icon'],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SolarCategory(),
                            SizedBox(width: 10),
                            SolarCategory(),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SolarCategory(),
                            SizedBox(width: 10),
                            SolarCategory(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Tools',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.46,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 3),
                              Icon(
                                Icons.energy_savings_leaf_outlined,
                                color: Colors.deepOrangeAccent,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Energy Generation',
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.deepOrangeAccent,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Space Required',
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Our Blogs',
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return BlogTile();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    ),
  );
}


  CurvedNavigationBarItem _buildNavItemWithShadow(
      IconData icon, String label, bool isSelected) {
    return CurvedNavigationBarItem(
      icon: Icon(
        icon,
        color: isSelected ? Colors.black : Colors.black,
        // You can add additional properties to the Icon widget here
      ),
      label: label,
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: Container(
        //margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: _boxDecoration(),
        child: Column(
          children: [
            _topBar(),
            SizedBox(
              height: 5,
            ),
            _searchBox(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      color: appcolor.orange,
      // gradient: LinearGradient(
      //     colors: Colors.orange,
      //     //[Colors.white,Colors.black],
      //   begin: Alignment.topCenter,
      //   end: Alignment.bottomCenter,
      // ),
    );
  }

  Widget _topBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SizedBox(width: 6,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/mohit.png'),
          ),

          //Image.asset('assets/images/mohit.png',scale: 50,),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              'Hi, Mohit',
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ), // Drawer Icon
          onPressed: () {
            // Scaffold.of(context).;
            // Add your drawer functionality here
          },
        ),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              // border: Border.all(color: Colors.green)
            ),
            child:Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.search , color: appcolor.orange,),
      ),
      Expanded(
        child: Center(
          child: TextField(
            
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.all( 1.0),
              hintText: 'Search Here',
              hintStyle:GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                )),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    ],
  ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 35,
          ), // Notification Icon
          onPressed: () {
            // Add your notification functionality here
          },
        ),
      ],
    );
  }

  Widget _carouselSlider() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 150,
               // Adjust the height as needed
              autoPlay: true, // Set to true for auto-playing the slider
              enlargeCenterPage:
                  true, // Set to true to increase the center item size
              // aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
              autoPlayCurve:
                  Curves.fastOutSlowIn, // Animation curve for auto-play
              enableInfiniteScroll:
                  true, // Set to false to disable infinite scroll
              autoPlayInterval:
                  Duration(seconds: 3), // Time interval for auto-play
              autoPlayAnimationDuration: Duration(
                  milliseconds: 800), // Animation duration for auto-play
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
              _buildRoundedImage('assets/images/about.png'),
          ],
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
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Widget _searchBox() {
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           IconButton(
  //             icon: Icon(Icons.menu), // Drawer Icon
  //             onPressed: () {
  //               // Add your drawer functionality here
  //             },
  //           ),
  //
  //           IconButton(
  //             icon: Icon(Icons.notifications), // Notification Icon
  //             onPressed: () {
  //               // Add your notification functionality here
  //             },
  //           ),
  //         ],
  //       ),
  //       SizedBox(height: 8), // Adjust spacing between icons and search bar
  //       SizedBox(
  //         height: 32,
  //         child: TextFormField(
  //           decoration: InputDecoration(
  //             filled: true,
  //             fillColor: Colors.white,
  //             border: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //             ),
  //             hintText: 'Search Here..',
  //             hintStyle: TextStyle(fontSize: 14),
  //             prefixIcon: Icon(Icons.search), // Search Icon
  //             contentPadding: EdgeInsets.all(10),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
  // Widget _searchBox(){
  //   return SizedBox(
  //     height: 32,
  //     child: TextFormField(
  //       decoration: InputDecoration(
  //         filled: true,
  //         fillColor: Colors.white,
  //         border: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(10)),
  //         hintText: 'Search Here..',hintStyle: TextStyle(fontSize: 14),
  //           prefixIcon: Icon( Icons.search,color:appcolor.orange,),
  //           contentPadding: EdgeInsets.all(10),
  //       ),
  //     ),
  //   );
  // }
}
