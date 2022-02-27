import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:hackathon_app/pages/find_friends.dart';
import 'package:hackathon_app/pages/home_page.dart';
import 'package:hackathon_app/pages/profile_screen.dart';
import 'package:hackathon_app/pages/shopping.dart';
import 'package:hackathon_app/screens/doctor_screen.dart';
import 'package:hackathon_app/pages/profile_page.dart';
import 'package:hackathon_app/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  final _pageList = [
    HomePage(),
    DoctorPage(),
    ProfileScreen(),
    FindFriends(),
    ShoppingPage(),
    ProfilePage(),
  ];

  onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: _pageList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.greenAccent,
        items: [
          Icon(Icons.home, size: 24),
          Icon(Icons.assignment, size: 24),
          Icon(Icons.blender_sharp, size: 24),
          Icon(Icons.add_location_alt_outlined, size: 24),
          Icon(Icons.add_shopping_cart_rounded, size: 24),
          Icon(Icons.account_box_rounded, size: 24),
        ],
        onTap: onTappedItem,
      ),
    );
  }
}
