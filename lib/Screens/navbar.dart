import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:workshopapp/Screens/accountscreen.dart';
import 'package:workshopapp/Screens/home/homescrn.dart';
import 'package:workshopapp/Screens/messagescreen.dart';

import 'package:workshopapp/Screens/selecttimeanddate.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    SelectTimeAndDate(),
    MessageScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 12,
              offset: Offset(0, -4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SafeArea(
          top: false,
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 0,
            activeColor: Colors.white,
            iconSize: 26,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            duration: const Duration(milliseconds: 300),
            tabBackgroundColor: const Color(0xff5A88C6),
            color: Colors.black,
            tabs: const [
              GButton(icon: Icons.home_outlined, text: ''),
              GButton(icon: Icons.access_time, text: ''),
              GButton(icon: Icons.chat_bubble_outline, text: ''),
              GButton(icon: Icons.person_outline, text: ''),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
