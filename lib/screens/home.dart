import 'package:flutter/material.dart';
import 'package:bottom_nav/bottom_nav.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        navBarHeight: 75.0,
        showElevation: false,
        backgroundColor: Color(0xFF0A0E0F),
        radius: 20.0,
        index: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavItem(
            icon: Icons.home_outlined,
            label: "Home",
            selectedColor: Color(0XFFEEFF41),
          ),
          BottomNavItem(
            icon: Icons.self_improvement_outlined,
            label: "Mind",
            selectedColor: Color(0XFFEEFF41),
          ),
          BottomNavItem(
            icon: Icons.directions_run_outlined,
            label: "Body",
            selectedColor: Color(0XFFEEFF41),
          ),
          BottomNavItem(
            icon: Icons.person_outline,
            label: "Profile",
            selectedColor: Color(0XFFEEFF41),
          ),
        ],
      ),
    );
  }
}
