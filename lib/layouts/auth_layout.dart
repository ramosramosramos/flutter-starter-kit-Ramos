import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/bottom_navigation.dart';

class AuthLayout extends StatefulWidget {
  const AuthLayout({super.key});

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const DashboardPage(),
      const Home(),
    ];

    final List<String> pageName = [
      'Dashboard',
      'Home',
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
            onTabSelected: (index) {
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
