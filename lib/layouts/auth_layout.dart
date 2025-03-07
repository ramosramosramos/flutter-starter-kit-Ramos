import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/bottom_navigation.dart';
import 'package:flutter_starter_kit/pages/dashboardScreen.dart';
import 'package:flutter_starter_kit/pages/homeScreen.dart';
import 'package:flutter_starter_kit/pages/profile/profileScreen.dart';

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
      const Homescreen(),
      const Dashboardscreen(),
      const Profilescreen(),
    ];

    final List<String> pageName = [
      'Dashboard',
      'Home',
      'Profile',

    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).hoverColor,
            title: Text(
              pageName[currentPageIndex],
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
