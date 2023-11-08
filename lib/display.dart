import 'package:flutter/material.dart';
import 'package:programme_information_management_system/AboutUs/AboutUs.dart';
import 'package:programme_information_management_system/Settings/Settings.dart';
import 'HomePage/LandingPage.dart'; // Import LandingPage.dart
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
      drawer: MyDrawer(),
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
      backgroundColor: Color(0xFF0028A8),
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
      labelColor: const Color.fromARGB(255, 0, 40, 168),
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}

//Change this for the menu bar
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            currentAccountPicture: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/cst.jpg"),
                radius: 70,
              ),
            ),
            accountName: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("PIMS", style: TextStyle(fontSize: 16)),
                // Text("Programme Information", style: TextStyle(fontSize: 16)),
                // Text("Management System", style: TextStyle(fontSize: 16)),
              ],
            ),
            accountEmail: Text("info.cst@rub.edu.bt"),
            
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // DefaultTabController.of(context)!.animateTo(1);
              Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  LandingPage(),
                ));
            },
          ),

          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Settings(),
                ));
            },
          ),
          
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () {
              // DefaultTabController.of(context)!.animateTo(0); // Navigate to the About Us page (index 0)
              Navigator.of(context).pop();
               Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  AboutUsPage(),
                ));
            },
          ), 

          const Divider(),
          ListTile(
            leading: Icon(Icons.logout),
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
