// lib/Departments/Department.dart

import 'package:flutter/material.dart';
import 'package:programme_information_management_system/Departments/ArchitectDepartment/ADepartment.dart';
import 'ITDepartment/ITDepartment.dart';
import 'ECEDepartment/ECEDepartment.dart';
import 'EDepartment/EDepartment.dart';
import 'ScienceDepartment/ScienceDepartment.dart';
import 'CDepartment/CDepartment.dart'; // Import the ITDepartment.dart file

class DepartmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departments'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchBar(), // Create a custom SearchBar widget
          SizedBox(height: 20),
          DepartmentList(), // Create a custom DepartmentList widget
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50), // Create a rounded shape
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for a department...',
          prefixIcon: Icon(Icons.search, color: Colors.white),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DepartmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DepartmentData> departments = [
      DepartmentData(
        name: 'Information Technology Department',
        image: 'assets/IT.jpeg',
      ),
      DepartmentData(
        name: 'Civil Department',
        image: 'assets/civil.jpeg',
      ),
      DepartmentData(
        name: 'Architecture Department',
        image: 'assets/archi.jpeg',
      ),
      DepartmentData(
        name: 'Electrical Department',
        image: 'assets/electrical.jpeg',
      ),
      DepartmentData(
        name: 'Electronic and Communication Department',
        image: 'assets/ECE.jpeg',
      ),
      DepartmentData(
        name: 'Science And Humanities Department',
        image: 'assets/SCi.jpeg',
      ),
      // Add more department data for other departments
    ];

    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical, // Make the list scroll vertically
        children: departments.map((department) {
          return DepartmentCard(
            name: department.name,
            image: department.image,
            onTap: () {
              // Define navigation when the department card is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) => CDepartmentPage()));
            },
          );
        }).toList(),
      ),
    );
  }
}

class DepartmentData {
  final String name;
  final String image;

  DepartmentData({
    required this.name,
    required this.image,
  });
}


class DepartmentCard extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback onTap;

  DepartmentCard({
    required this.name,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Set border radius to 30
        ),
        color: Color(0xFFFCDC7C), // Set the card color to #fcdc7c
        child: Column(
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50), // Add left margin to move the button inside
                  child: ElevatedButton(
                    onPressed: () {
                      // Add functionality to display department details
                    },
                    child: Text('Display'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35), // Adjust the margins for position
                  child: Container(
                    width: 100, // Set the width for the circular shape
                    height: 100, // Set the height for the circular shape
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it a circle
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow, // Glow color
                          blurRadius: 10, // Adjust the glow effect
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: GlowingOverscrollIndicator(
                        axisDirection: AxisDirection.down,
                        color: Colors.yellow, // Glow color
                        showLeading: false,
                        showTrailing: false,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover, // Fit the image within the container
                        ),
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
