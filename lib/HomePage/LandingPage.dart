import 'package:flutter/material.dart';
import 'utils.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // homepageBvY (1:3)
          width: double.infinity,
          height: 844 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // autogroupy36y2pg (Q9izwAFKAVUzMufSPQy36Y)
                left: 0 * fem,
                top: 10 * fem,
                child: Container(
                  width: 390 * fem,
                  height: 233 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle28cp (5:7)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 390 * fem,
                            height: 193 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25 * fem),
                              child: Image.asset(
                                'assets/page-1/images/rectangle-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // ellipse1zQ8 (5:55)
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
                // inpursuitoftomorrowstechnology (6:31)
                left: 44.5 * fem,
                top: 260 * fem,
                child: Align(
                  child: SizedBox(
                    width: 311 * fem,
                    height: 32 * fem,
                    child: Text(
                      'In pursuit of tomorrow’s technology ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Kalam',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5925 * ffem / fem,
                        color: Color(0xff00a3ff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // ourvisionacentreofexcellencein (6:33)
                left: 22.5 * fem,
                top: 300 * fem,
                child: Align(
                  child: SizedBox(
                    width: 339 * fem,
                    height: 96 * fem,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Kalam',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5925 * ffem / fem,
                          color: Color(0xff469d38),
                        ),
                        children: [
                          TextSpan(
                            text: 'Our Vision\n',
                            style: SafeGoogleFont(
                              'Kalam',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5925 * ffem / fem,
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
                // frame2B4c (9:113)
                left: 58 * fem,
                top: 410 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 688 * fem),
                  width: 300 * fem,
                  height: 1249 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame1Gbr (9:111)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 11 * fem),
                        width: 279 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // autogrouptzfzCVW (Q9j1Ku6RdmSMLcj1QxTzfz)
                              width: double.infinity,
                              height: 119 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupd7kc8PA (Q9j1TEDYc9aRYwuieqd7kc)
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
                                      // departmentscp8 (9:64)
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 116 * fem,
                                          ),
                                          child: Text(
                                            '7\nDepartments',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5925 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupcghvpfJ (Q9j1Wtn76LeTf7W5GnCgHv)
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
                                      // programmesLNk (9:65)
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 107 * fem,
                                          ),
                                          child: Text(
                                            '10\nProgrammes',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5925 * ffem / fem,
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
                              // autogroup9o7ex2k (Q9j1ee4CV1rwqWQv8P9o7e)
                              width: double.infinity,
                              height: 119 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupvl7a68x (Q9j1koYbUyPTk4N4SeVL7a)
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
                                      // newprogrammesaZv (9:67)
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 107 * fem,
                                          ),
                                          child: Text(
                                            '3\nNew\nProgrammes',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5925 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupmgslfLU (Q9j1qU5VNfqgyBJL97mgSL)
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
                                      // notificationsyMA (9:68)
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 111 * fem,
                                          ),
                                          child: Text(
                                            '1 \nNotifications',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Kalam',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5925 * ffem / fem,
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
                              // thecollegecurrentlyoffersthefo (9:70)
                              constraints: BoxConstraints(
                                maxWidth: 270 * fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Gill Sans MT',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1596679688 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'The College currently offers the following programs:\n',
                                      style: SafeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5925 * ffem / fem,
                                        color: Color(0xffffa500),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Master of Engineering in Renewable Energy\nMasters in Construction Management\n',
                                      style: SafeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5925 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Four-year undergraduate engineering programs in the following disciplines:\n',
                                      style: SafeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5925 * ffem / fem,
                                        color: Color(0xffffa500),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Civil\nElectrical\nElectronics & Communication\nInformation Technology\nEngineering Geology\nInstrumentation & Control Engineering\nA five-year program in Architecture\n',
                                      style: SafeGoogleFont(
                                        'Kalam',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5925 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        // additionallythecollegeoffersca (9:112)
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Gill Sans MT',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1596679688 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Additionally, the College offers capacity-building programs for in-service personnel holding Diplomas in the following disciplines:\n',
                              style: SafeGoogleFont(
                                'Kalam',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5925 * ffem / fem,
                                color: Color(0xffffa500),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Civil\nElectrical\nElectronics & Communication\nInformation Technology\n\n',
                              style: SafeGoogleFont(
                                'Kalam',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5925 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'These programs take into account prior learning and, thereby, the duration of the program is reduced by a year.\nThe programs are managed through the following academic departments in the College:\n',
                              style: SafeGoogleFont(
                                'Kalam',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5925 * ffem / fem,
                                color: Color(0xffffa500),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Civil Engineering Department\nElectrical Engineering Department\nElectronics & Communication Department\nInformation Technology Department\nScience and Humanities Department\nArchitecture Department\nAll the academic programs offered by the College are validated and adopted by the Royal University of Bhutan (RUB) and National Accreditation Council of Bhutan."\n',
                              style: SafeGoogleFont(
                                'Kalam',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5925 * ffem / fem,
                                color: Color(0xff000000),
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
