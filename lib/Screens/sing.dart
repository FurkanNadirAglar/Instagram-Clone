import 'package:flutter/material.dart';
import 'package:flutter_instagram/Screens/homePage.dart';
import 'package:flutter_instagram/Screens/profilePage.dart';
import 'package:flutter_instagram/Screens/searchPage.dart';
import 'package:flutter_instagram/Screens/shopPage.dart';
import 'package:flutter_instagram/Screens/reels.dart';

class SingPage extends StatefulWidget {
  const SingPage({Key? key}) : super(key: key);

  @override
  State<SingPage> createState() => _SingPageState();
}

class _SingPageState extends State<SingPage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: currentIndex,
        iconSize: 28,
        showUnselectedLabels: false,
        selectedFontSize: 15,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.video_call),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_basket_sharp),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
