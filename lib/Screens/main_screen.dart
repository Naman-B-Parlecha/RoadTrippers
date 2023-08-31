import 'package:flutter/material.dart';

import 'package:road_trippers/Screens/favourite_screen.dart';
import 'package:road_trippers/Screens/home_screen.dart';
import 'package:road_trippers/Screens/search_screen.dart';
import 'package:road_trippers/Screens/user_detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  List pages = const [
    HomeScreen(),
    SearchScreen(),
    FavouriteScreen(),
    UserDetailsScreen()
  ];
  int currentIndexing = 0;
  void onTapped(int index) {
    setState(() {
      currentIndexing = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndexing],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.75),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndexing,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile")
          ]),
    );
  }
}
