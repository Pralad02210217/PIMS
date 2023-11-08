import 'package:flutter/material.dart';
import 'package:programme_information_management_system/Programme/BEA/BEA.dart';
import 'package:programme_information_management_system/Programme/BECivil/BEC.dart';
import 'package:programme_information_management_system/Programme/BEECE/BEECE.dart';
import 'package:programme_information_management_system/Programme/BEElectrical/BEE.dart';
import 'package:programme_information_management_system/Programme/BEGeology/BEG.dart';
import 'package:programme_information_management_system/Programme/BEICE/BEICE.dart';
import 'package:programme_information_management_system/Programme/BEWater/BEW.dart';
import 'BEIT/BEIT.dart';
void main() {
  runApp(MaterialApp(
    home: ProgrammePage(),
  ));
}

class ProgrammePage extends StatefulWidget {
  @override
  _ProgrammePageState createState() => _ProgrammePageState();
}

class _ProgrammePageState extends State<ProgrammePage> {
  final TextEditingController _searchController = TextEditingController();
  List<ProgrammeData> programmes = [];

  @override
  void initState() {
    programmes = allprogrammes;
    _searchController.addListener(_onSearchChanged);
    super.initState();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        programmes = allprogrammes;
      } else {
        programmes = allprogrammes
            .where((department) => department.name.toLowerCase().contains(query))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBar(searchController: _searchController),
          SizedBox(height: 20),
          ProgrammeList(programmes: programmes),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController searchController;

  SearchBar({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: const Color.fromARGB(255, 0, 84, 153)), // Add a blue border
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search for a programme...',
          prefixIcon: Icon(Icons.search, color: const Color.fromARGB(255, 0, 84, 153)), // Make the icon blue
          border: InputBorder.none,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 84, 153)), // Make the hint text blue
        ),
        style: TextStyle(color: Colors.black), // Make the input text blue
      ),
    );
  }
}

class ProgrammeList extends StatelessWidget {
  final List<ProgrammeData> programmes;

  ProgrammeList({required this.programmes});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: programmes.map((department) {
          return DepartmentCard(
            name: department.name,
            image: department.image,
            pageToNavigate: department.pageToNavigate,
            onTap: () {
              // Define navigation when the department card is tapped
            },
          );
        }).toList(),
      ),
    );
  }
}

class ProgrammeData {
  final String name;
  final String image;
  final Widget pageToNavigate;

  ProgrammeData({
    required this.name,
    required this.image,
    required this.pageToNavigate,
  });
}

class DepartmentCard extends StatelessWidget {
  final String name;
  final String image;
  final Widget pageToNavigate;
  final VoidCallback onTap;

  DepartmentCard({
    required this.name,
    required this.image,
    required this.pageToNavigate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => pageToNavigate));
                      // Add functionality to display department details
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 245, 173, 4),
                    ),
                    label: Text('Display'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// A list of all programmes
List<ProgrammeData> allprogrammes = [
  ProgrammeData(
    name: 'Information Technology Engineering',
    image: 'assets/undraw_Software_engineer_re_tnjc.png',
    pageToNavigate: ITProgramPage(),
  ),
  ProgrammeData(
    name: 'Civil Engineering',
    image: 'assets/undraw_QA_engineers_dg5p.png',
    pageToNavigate: CProgramPage(),
  ),
    ProgrammeData(
    name: 'Geology Engineering',
    image: 'assets/undraw_QA_engineers_dg5p.png',
    pageToNavigate: GProgramPage(),
  ),
  ProgrammeData(
    name: 'Architecture ',
    image: 'assets/undraw_urban_design_kpu8.png',
    pageToNavigate: AProgramPage(),
  ),
  ProgrammeData(
    name: 'Electrical Engineering',
    image: 'assets/undraw_electricity_k2ft.png',
    pageToNavigate: EProgramPage(),
  ),
  ProgrammeData(
    name: 'Electronic and Communication Engineering',
    image: 'assets/undraw_circuit_sdmr.png',
    pageToNavigate: ECEProgramPage(),
  ),
  ProgrammeData(
    name: 'Water Engineering',
    image: 'assets/undraw_Science_re_mnnr.png',
    pageToNavigate: WProgramPage(),
  ),
    ProgrammeData(
    name: 'Instrumentation and Controls Engineering',
    image: 'assets/undraw_circuit_sdmr.png',
    pageToNavigate: ICEProgramPage(),
  ),
  // Add more department data for other programmes
];
