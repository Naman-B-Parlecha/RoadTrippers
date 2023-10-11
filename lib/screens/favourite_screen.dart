import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test/data/dummy_data.dart';

import 'package:test/screens/filtered_favorites_screen.dart';
import 'package:test/widgets/fav_item.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});
  @override
  State<FavouriteScreen> createState() {
    // TODO: implement createState
    return _FavouriteScreenState();
  }
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 12),
                child: Text(
                  'Recently saved',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => FilteredFavoritesScreen(
                            title: 'Accommodation',
                            filteredList: favItems.where((ele) {
                              if (ele.category.name == 'accommodation') {
                                return true;
                              } else {
                                return false;
                              }
                            }).toList(),
                          )));
                },
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => FilteredFavoritesScreen(
                            title: 'Activity',
                            filteredList: favItems.where((ele) {
                              if (ele.category.name == 'activity') {
                                return true;
                              } else {
                                return false;
                              }
                            }).toList(),
                          )));
                },
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => FilteredFavoritesScreen(
                            title: 'Destitation',
                            filteredList: favItems.where((ele) {
                              if (ele.category.name == 'destination') {
                                return true;
                              } else {
                                return false;
                              }
                            }).toList(),
                          )));
                },
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => FilteredFavoritesScreen(
                            title: 'Inspiration',
                            filteredList: favItems.where((ele) {
                              if (ele.category.name == 'inspiration') {
                                return true;
                              } else {
                                return false;
                              }
                            }).toList(),
                          )));
                },
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => FilteredFavoritesScreen(
                            title: 'Restaurant',
                            filteredList: favItems.where((ele) {
                              if (ele.category.name == 'restaurant') {
                                return true;
                              } else {
                                return false;
                              }
                            }).toList(),
                          )));
                },
              ),
              Container(
                height: 0.5,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
