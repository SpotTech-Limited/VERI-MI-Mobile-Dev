import 'package:flutter/material.dart';

import '/core/screens/bottom_nav_bar_screen/bottom_nav_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentPageIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text('Home', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Search', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Report', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Support', style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: CustomNavigationBar(
        onItemSelected: (index) {
          _currentPageIndex = index;
          setState(() {});
        },
      ),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.only(
      //     topLeft: Radius.circular(35.0),
      //     topRight: Radius.circular(35.0),
      //   ),
      //   child: NavigationBar(
      //     destinations: _destinations,
      //     selectedIndex: _currentPageIndex,
      //     onDestinationSelected: (int index) {
      //       setState(() => _currentPageIndex = index);
      //     },
      //   ),
      // ),
    );
  }
}
