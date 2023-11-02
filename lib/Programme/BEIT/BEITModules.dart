import 'package:flutter/material.dart';
import 'Modules/Page1.dart'; // Import Page1
import 'Modules/Page2.dart'; // Import Page2
import 'Modules/Page3.dart';// Import page 3




class newModules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwipePageDemo(),
    );
  }
}

class SwipePageDemo extends StatefulWidget {
  @override
  _SwipePageDemoState createState() => _SwipePageDemoState();
}

class _SwipePageDemoState extends State<SwipePageDemo> {
  final List<Widget> pages = [Page1(), Page2(), Page3()]; // Use the imported page Widgets
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
  padding: EdgeInsets.all(16),
  child: DropdownButton<int>(
    value: currentPageIndex,
    items: [
      DropdownMenuItem(
        value: 0,
        child: Text('Page 1'),
      ),
      DropdownMenuItem(
        value: 1,
        child: Text('Page 2'),
      ),
      DropdownMenuItem(
        value: 2,
        child: Text('Page 3'),
      ),
    ],
    onChanged: (value) {
      setState(() {
        currentPageIndex = value!;
      });
    },
    // Add your customization here
    style: TextStyle(
      color: Colors.blue, // Change text color
    ),
    icon: Icon(Icons.arrow_drop_down), // Custom dropdown icon
    elevation: 4, // Add a shadow
    underline: Container(
      height: 2,
      color: Colors.blue, // Custom underline color
    ),
    // You can add more customization as needed
  ),
),
          Expanded(
            child: Stack(
              children: pages
                  .asMap()
                  .entries
                  .map((entry) => buildPage(entry.value, entry.key))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(Widget page, int index) {
    double offset = (index - currentPageIndex).toDouble();
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      top: offset * MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: page,
    );
  }
}
