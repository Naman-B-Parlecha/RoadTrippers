import 'dart:math';
import 'package:test/models/saved_places.dart';
import 'package:flutter/material.dart';
import 'package:test/data/dummy_data.dart';
import 'package:test/widgets/fav_item.dart';

class FavoritesScreen extends StatefulWidget {
  FavoritesScreen({super.key});
  @override
  State<FavoritesScreen> createState() {
    // TODO: implement createState
    return _FavoritesScreenState();
  }
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final categoryIcons = {
    Category.accommodation: Icons.house_rounded,
    Category.activity: Icons.local_activity,
    Category.destination: Icons.airplanemode_active,
    Category.inspiration: Icons.lightbulb,
    Category.restaurant: Icons.fastfood,
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 12),
              child: Text(
                'Recently saved',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: min(favItems.length, 5),
                itemBuilder: (context, index) => FavItem(favItems[index]),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 12),
              child: Text(
                'Your Lists',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(
                Icons.house_rounded,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              title: Text('Accommodation'),
              subtitle: Text(
                'Collection of all saved hotels',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.75),
                    ),
              ),
              onTap: () {},
            ),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(
                Icons.local_activity,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              title: Text('Activity'),
              subtitle: Text(
                'To/do activities or events to go to',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.75),
                    ),
              ),
              onTap: () {},
            ),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(
                Icons.airplanemode_active,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              title: Text('Destination'),
              subtitle: Text(
                'Must visit travel places',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.75),
                    ),
              ),
              onTap: () {},
            ),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(
                Icons.lightbulb,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              title: Text('Inspiration'),
              subtitle: Text(
                'Looking out to try out new things',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.75),
                    ),
              ),
              onTap: () {},
            ),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(
                Icons.fastfood,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              title: Text('Restaurant'),
              subtitle: Text(
                'Yummy places to eat at',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.75),
                    ),
              ),
              onTap: () {},
            ),
            Container(
              height: 0.5,
              color: Colors.black38,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          onTap: (ind) {},
          selectedItemColor: Theme.of(context).colorScheme.onSurface,
          unselectedItemColor: Colors.grey.withOpacity(0.75),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 2,
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
