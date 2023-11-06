import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPage = 0;
  PageController _pageController = PageController();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // Start the timer to automatically change the page every 2 seconds
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentPage < imagePaths.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  List<String> imagePaths = [
    'assets/page-1/images/rectangle-2.png',
    'assets/DSC03931.JPG',
    'assets/DSC03938.JPG',
    'assets/DSC03941.JPG',
    'assets/DSC04026.JPG',
  ];

  TextStyle safeGoogleFont(
    String fontName, { 
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.black,
  }) {
    return GoogleFonts.getFont(
      fontName,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 390 * fem,
                    height: 193 * fem,
                    child: PageView(
                      controller: _pageController, // Use PageController
                      children: imagePaths.map((imagePath) {
                        return Container(
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25 * fem),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              // ... Rest of your code
              Positioned(
                left: 0 * fem,
                top: 10 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 233 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 155 * fem,
                        top: 153 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 80 * fem,
                            height: 80 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/page-1/images/ellipse-1-bg.png',
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 44.5 * fem,
                top: 340 * fem,
                child: Align(
                  child: SizedBox(
                    width: 311 * fem,
                    height: 32 * fem,
                    child: Text(
                      'In pursuit of tomorrow’s technology ',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont(
                        'Kalam',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff00a3ff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22.5 * fem,
                top: 383 * fem,
                child: Align(
                  child: SizedBox(
                    width: 339 * fem,
                    height: 96 * fem,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: safeGoogleFont(
                          'Kalam',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff469d38),
                        ),
                        children: [
                          TextSpan(
                            text: 'Our Vision\n',
                            style: safeGoogleFont(
                              'Kalam',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff469d38),
                            ),
                          ),
                          TextSpan(
                            text:
                                '“A centre of excellence in science and technology enriched with GNH values. “',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 58 * fem,
                top: 489 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 688 * fem),
                  width: 300 * fem,
                  height: 1249 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 11 * fem),
                        width: 279 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 119 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        12 * fem, 27 * fem, 5 * fem, 28 * fem),
                                    width: 133 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff00a3ff)),
                                      color: Color(0xffff5a5a),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 116 * fem,
                                          ),
                                          child: Text(
                                            '7\nDepartments',
                                            textAlign: TextAlign.center,
                                            style: safeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        13 * fem, 27 * fem, 13 * fem, 28 * fem),
                                    width: 133 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff00a3ff)),
                                      color: Color(0xff3546de),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 107 * fem,
                                          ),
                                          child: Text(
                                            '10\nProgrammes',
                                            textAlign: TextAlign.center,
                                            style: safeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 31 * fem,
                            ),
                            Container(
                              width: double.infinity,
                              height: 119 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        12 * fem, 7 * fem, 14 * fem, 7 * fem),
                                    width: 133 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff00a3ff)),
                                      color: Color(0xff4ad533),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 107 * fem,
                                          ),
                                          child: Text(
                                            '3\nNew\nProgrammes',
                                            textAlign: TextAlign.center,
                                            style: safeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        11 * fem, 23 * fem, 11 * fem, 32 * fem),
                                    width: 133 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff00a3ff)),
                                      color: Color(0xff7a22a3),
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 111 * fem,
                                          ),
                                          child: Text(
                                            '1\nNotifications',
                                            textAlign: TextAlign.center,
                                            style: safeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 31 * fem,
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 270 * fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: safeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'The College currently offers the following programs:\n',
                                      style: safeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffa500),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Master of Engineering in Renewable Energy\nMasters in Construction Management\n',
                                      style: safeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Four-year undergraduate engineering programs in the following disciplines:\n',
                                      style: safeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffa500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
