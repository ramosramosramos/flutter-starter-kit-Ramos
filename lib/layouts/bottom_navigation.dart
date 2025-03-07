import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatefulWidget {
  final int cur;
  final Function (int) onTabSeleted;
  const BottomNavigationBarComponent({super.key, this.cur = 0,required this.onTabSeleted});

  @override
  State<BottomNavigationBarComponent> createState() =>
      _BottomNavigationBarComponentState();
}

class _BottomNavigationBarComponentState
    extends State<BottomNavigationBarComponent> {
  late int currentPageIndex;

  @override
  void initState() {
   
    super.initState();
    currentPageIndex = widget.cur;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.dashboard),
          selectedIcon: Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
          label: "Dashboard",
        ),
        NavigationDestination(
          icon: Icon(Icons.home),
          selectedIcon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.settings),
          selectedIcon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          label: "Settings",
        ),
        NavigationDestination(
            icon: Icon(Icons.production_quantity_limits),
            selectedIcon: Icon(
              Icons.production_quantity_limits,
              color: Colors.white,
            ),
            label: "Store"),
      ],
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
        widget.onTabSeleted(index);
      },
      indicatorColor: Colors.blue,
      selectedIndex: currentPageIndex,
    );
  }
}
