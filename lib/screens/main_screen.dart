import 'package:flutter/material.dart';

import 'package:test/screens/favourite_screen.dart';
import 'package:test/screens/home_screen.dart';
import 'package:test/screens/search_screen.dart';
import 'package:test/screens/user_detail_screen.dart';
import 'package:test/widgets/OwnSideDrawer.dart';

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

  void changeIndex(int indexing) {
    setState(() {
      currentIndexing = indexing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: OwnSideDrawer(changeIndex: changeIndex),
      body: pages[currentIndexing],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 8),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile")
            ]),
      ),
    );
  }
}
