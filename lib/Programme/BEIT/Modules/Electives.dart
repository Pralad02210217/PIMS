import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Electives extends StatefulWidget {
  @override
  _ElectivesState createState() => _ElectivesState();
}

class _ElectivesState extends State<Electives> {
  List<Map<String, dynamic>> dataSemester1 = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    final apiUrl = 'https://node-api-6l0w.onrender.com/api/v1/students/electives/P08';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        print(jsonData);

        setState(() {
          dataSemester1 = jsonData.map((item) {
            return {
              'eid': item['eid'],
              'pid': item['pid'],
              'ename': item['ename'],
              'specilization': item['specilization'],
              'mcode': item['mcode'],
            };
          }).toList();
        });
      } else {
        throw Exception('Failed to load data from the API');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text('Semester 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
          ),
        ],
      ),
    );
  }
}
class SemesterTable extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  SemesterTable({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Text("No data available"); // Add a message for when there's no data.
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 10.0,
        columns: data.first.keys
            .where((key) => key != 'mcode' && key != 'pid') // Use the lambda function here
            .map((column) {
          return DataColumn(
            label: Text(column),
            numeric: false,
          );
        }).toList(),
        rows: data.map((row) {
          return DataRow(
            cells: data.first.keys
                .where((key) => key != 'mcode' && key != 'pid') // Use the lambda function here
                .map((column) {
              return DataCell(
                Text(row[column].toString() ?? ""),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

class FixedColumn extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  FixedColumn({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Text("No data available"); // Add a message for when there's no data.
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [DataColumn(label: Text('Code'))],
        rows: data.map((row) {
          return DataRow(
            cells: [DataCell(Text(row['mcode'].toString() ?? ""))],
          );
        }).toList(),
      ),
    );
  }
}
