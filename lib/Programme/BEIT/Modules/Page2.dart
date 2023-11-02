import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final List<Map<String, String>> dataSemester1 = [
    {'Name': 'John', 'Age': '30', 'Country': 'USA', 'Salary': '50000', 'Position': 'Engineer', 'Experience': '5 years'},
    {'Name': 'John', 'Age': '30', 'Country': 'USA', 'Salary': '50000', 'Position': 'Engineer', 'Experience': '5 years'},
    {'Name': 'Alice', 'Age': '25', 'Country': 'Canada', 'Salary': '60000', 'Position': 'Designer', 'Experience': '3 years'},
    {'Name': 'Bob', 'Age': '35', 'Country': 'UK', 'Salary': '70000', 'Position': 'Manager', 'Experience': '7 years'},
    {'Name': 'Eve', 'Age': '28', 'Country': 'Australia', 'Salary': '55000', 'Position': 'Developer', 'Experience': '4 years'},
    // Add more data rows as needed
  ];

  final List<Map<String, String>> dataSemester2 = [
    {'Name': 'John', 'Age': '30', 'Country': 'USA', 'Salary': '50000', 'Position': 'Engineer', 'Experience': '5 years'},
    {'Name': 'John', 'Age': '30', 'Country': 'USA', 'Salary': '50000', 'Position': 'Engineer', 'Experience': '5 years'},
    {'Name': 'Alice', 'Age': '25', 'Country': 'Canada', 'Salary': '60000', 'Position': 'Designer', 'Experience': '3 years'},
    {'Name': 'Bob', 'Age': '35', 'Country': 'UK', 'Salary': '70000', 'Position': 'Manager', 'Experience': '7 years'},
    {'Name': 'Eve', 'Age': '28', 'Country': 'Australia', 'Salary': '55000', 'Position': 'Developer', 'Experience': '4 years'},
    // Add more data rows as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text('Semester 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: <Widget>[
                  FixedColumn(data: dataSemester1),
                  Expanded(
                    child: SemesterTable(data: dataSemester1),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16), // Add spacing between tables
          Column(
            children: [
              Text('Semester 4', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: <Widget>[
                  FixedColumn(data: dataSemester2),
                  Expanded(
                    child: SemesterTable(data: dataSemester2),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SemesterTable extends StatelessWidget {
  final List<Map<String, String>> data;

  SemesterTable({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 10.0, // Adjust spacing between columns if needed
        columns: data.first.keys
            .where((key) => key != 'Name')
            .map((column) {
          return DataColumn(
            label: Text(column),
            numeric: false,
          );
        }).toList(),
        rows: data.map((row) {
          return DataRow(
            cells: data.first.keys
                .where((key) => key != 'Name')
                .map((column) {
              return DataCell(
                Text(row[column] ?? ""),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}


class FixedColumn extends StatelessWidget {
  final List<Map<String, String>> data;

  FixedColumn({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [DataColumn(label: Text('Name'))],
        rows: data.map((row) {
          return DataRow(
            cells: [DataCell(Text(row['Name'] ?? ""))],
          );
        }).toList(),
      ),
    );
  }
}
