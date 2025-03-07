import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/bottom_navigation.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const DashboardPage(),
      const Home(),
      const Setting(),
      const Store(),
    ];

final List<String> pageName = [
  'Dashboard',
  'Home',
  'Settings',
  'Store',
];
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              pageName[currentPageIndex],
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: pages[currentPageIndex],
          bottomNavigationBar: BottomNavigationBarComponent(
            cur: currentPageIndex,
            onTabSeleted: (index) {
              setState(() {
                currentPageIndex = index;
                
              });
            },
          )),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Setting'),
    );
  }
}

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Store'),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('DashboardPage'),
    );
  }
}
