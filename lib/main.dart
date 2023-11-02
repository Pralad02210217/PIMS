import 'package:flutter/material.dart';
import 'HomePage/LandingPage.dart'; // Import  LandingPage.dart
import 'AboutUs/AboutUs.dart'; // Import  AboutUs.dart
import 'Departments/Department.dart'; // Import Department.dart
import 'Programme/Programme.dart'; // Import Programme.dart
void main() => runApp(
      MaterialApp(
        home: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: MyAppBar(),
      ),
      body: TabBarView(
        children: <Widget>[
          AboutUsPage(), // Enter here
          LandingPage(), // Use LandingPage widget for the Home page
          DepartmentPage(),
          ProgrammePage(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
      drawer: MyDrawer(),
    );
  }
}

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  String pageTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Text(
        pageTitle,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.brightness_4),
          onPressed: () {
            // Implement dark mode toggle logic here
          },
        ),
      ],
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.info),
          text: 'About',
        ),
        Tab(
          icon: Icon(Icons.home),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.business),
          text: 'Departments',
        ),
        Tab(
          icon: Icon(Icons.book),
          text: 'Programme',
        ),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Programme Information Management", style: TextStyle(fontSize: 16)),
                Text("System", style: TextStyle(fontSize: 16)),
              ],
            ),
            accountEmail: Text("PIMS.cst@rub.edu.bt"),
            currentAccountPicture: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/cst.jpeg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              DefaultTabController.of(context)!.animateTo(1);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Departments'),
            onTap: () {
              DefaultTabController.of(context)!.animateTo(2);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Programme'),
            onTap: () {
              DefaultTabController.of(context)!.animateTo(3);
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
