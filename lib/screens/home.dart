import 'package:flutter/material.dart';
import 'package:bottom_nav/bottom_nav.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String today;

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    today = DateFormat('MMMMd').format(now).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E0F),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF0A0E0F),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  today,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                  ),
                ),
                Text(
                  'Hello, Brie!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF277DA1),
              radius: MediaQuery.of(context).size.height * 0.028,
              backgroundImage: NetworkImage(
                'https://media1.popsugar-assets.com/files/thumbor/ojPLDHgzPh9AJz8Qtwus4j2nHkI/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2019/03/05/677/n/1922564/1da01437ef4d3fe3_GettyImages-1133728599/i/Brie-Larson-Gold-Gown-Captain-Marvel-Premiere.jpg',
              ),
            ),
          ],
        ),
      ),
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
