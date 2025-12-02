import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/screens/account_screen.dart';
import 'package:instagram_ui_clone/screens/home_screen.dart';
import 'package:instagram_ui_clone/screens/reels_screen.dart';
import 'package:instagram_ui_clone/screens/search_screen.dart';
import 'package:instagram_ui_clone/screens/shop_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  final List<Widget> _selectedScreen = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ShopScreen(),
    AccountScreen(),
  ];

  void bottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: bottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
