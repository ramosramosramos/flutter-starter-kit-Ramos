import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatefulWidget {
  final int cur;
  final Function(int) onTabSelected;

  const BottomNavigationBarComponent({
    super.key,
    this.cur = 0,
    required this.onTabSelected,
  });

  @override
  State<BottomNavigationBarComponent> createState() =>
      _BottomNavigationBarComponentState();
}

class _BottomNavigationBarComponentState
    extends State<BottomNavigationBarComponent> {
  late int currentPageIndex = widget.cur;

  final List<NavigationDestination> destinations = const [
    NavigationDestination(icon: Icon(Icons.dashboard) , label: "Dashboard"),
    NavigationDestination(icon: Icon(Icons.home), label: "Home"),

  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: destinations,
      selectedIndex: currentPageIndex,
      indicatorColor: Colors.blue,
      onDestinationSelected: (index) {
        setState(() => currentPageIndex = index);
        widget.onTabSelected(index);
      },
    );
  }
}
