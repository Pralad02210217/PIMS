import 'package:flutter/material.dart';
import 'HomePage/LandingPage.dart'; // Import LandingPage.dart
import 'AboutUs/AboutUs.dart'; // Import AboutUs.dart
import 'Departments/Department.dart'; // Import Department.dart
import 'Programme/Programme.dart'; // Import Programme.dart
import 'login.dart';

void main() => runApp(
      MaterialApp(
        home: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );

    // Listen for tab changes and update the app bar title
    _tabController.addListener(() {
      setState(() {}); // Rebuild the widget when the tab changes
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the currently selected tab index
    final currentIndex = _tabController.index;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: MyAppBar(
          currentIndex: currentIndex,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          LandingPage(),
          DepartmentPage(),
          ProgrammePage(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(controller: _tabController),
      drawer: MyDrawer(controller: _tabController),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final int currentIndex;

  MyAppBar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final tabTitles = ['Home', 'Departments', 'Programme', 'About Us'];
    return AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Text(
        tabTitles[currentIndex],
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
  final TabController controller;

  MyBottomNavigationBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: <Widget>[
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
  final TabController controller;

  MyDrawer({required this.controller});

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
              controller.animateTo(0);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Departments'),
            onTap: () {
              controller.animateTo(1);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Programme'),
            onTap: () {
              controller.animateTo(2);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage())); // Navigate to the AboutUsPage
            },
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Log Out'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login())); // Navigate to the AboutUsPage
            },
          ),
        ],
      ),
    );
  }
}
