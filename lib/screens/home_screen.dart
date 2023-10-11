import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:test/data/blogs.dart';
import 'package:test/data/places_info.dart';
import 'package:test/models/post.dart';
import 'package:test/models/store_places.dart';
import 'package:test/screens/blog_screen.dart';
import 'package:test/screens/category_display.dart';
import 'package:test/screens/place_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  var exploreMoreImages = {
    'artgallery.jpg': 'Art Gallery',
    'cafe.jpg': 'Cafe',
    'citymall.jpg': 'City Mall',
    'museum.jpg': 'Museum',
    'stadium.jpg': 'Stadium',
  };
  List<String> codes = [
    'art_gallery',
    'cafe',
    'city_mall',
    'museum',
    'stadium'
  ];
  bool isSmall = true;
  List<Post> smallPosts = posts.sublist(0, 3);
  List<Post> currPosts = posts.sublist(0, 3);
  void setPostsSize(bool isSmall) {
    setState(() {
      this.isSmall = isSmall;
      if (isSmall) {
        currPosts = smallPosts;
      } else {
        currPosts = posts;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabbarcontroller = TabController(
        length: 4,
        vsync:
            this); // for controlling the tab bar length depends on number of tabs

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  )),
              const SizedBox(height: 20),
              const Text(
                "Discover",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TabBar(
                  controller: tabbarcontroller,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black38,
                  isScrollable: true,
                  tabs: const [
                    Tab(text: "Parks"),
                    Tab(text: "Monuments"),
                    Tab(text: "Resturants"),
                    Tab(text: "Hotels")
                  ]),
              Container(
                height: 300,
                width: double.infinity,
                child: TabBarView(controller: tabbarcontroller, children: [
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PlaceDetailScreen(
                                      place: park_places[index],
                                    )));
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 15, right: 15),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(park_places[index].img),
                                    fit: BoxFit.cover)),
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(park_places[index].name,
                                    style: GoogleFonts.kanit(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PlaceDetailScreen(
                                      place: monument_places[index],
                                    )));
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 15, right: 15),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        monument_places[index].img),
                                    fit: BoxFit.cover)),
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(monument_places[index].name,
                                    style: GoogleFonts.kanit(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PlaceDetailScreen(
                                      place: restaurant_places[index],
                                    )));
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 15, right: 15),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        restaurant_places[index].img),
                                    fit: BoxFit.cover)),
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(restaurant_places[index].name,
                                    style: GoogleFonts.kanit(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PlaceDetailScreen(
                                      place: hotel_places[index],
                                    )));
                          },
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 15, right: 15),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        NetworkImage(hotel_places[index].img),
                                    fit: BoxFit.cover)),
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(hotel_places[index].name,
                                    style: GoogleFonts.kanit(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "see all",
                        style: TextStyle(
                            color: Colors.purple[600],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exploreMoreImages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CategoryScreen(
                                      title: exploreMoreImages.values
                                          .elementAt(index),
                                      filteredList: places.where((element) {
                                        if (element.category ==
                                            codes.elementAt(index)) {
                                          return true;
                                        } else {
                                          return false;
                                        }
                                      }).toList(),
                                    )));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(20),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/ExploreMore/${exploreMoreImages.keys.elementAt(index)}"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Text(
                          exploreMoreImages.values.elementAt(index),
                          textAlign: TextAlign.center,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              const Text(
                'Latest Posts',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ...currPosts.map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(e.image),
                    radius: 26,
                  ),
                  title: Text(
                    e.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                  subtitle: Text(
                    e.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BlogScreen(e),
                    ));
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setPostsSize(!isSmall);
                      },
                      child: Text(
                        isSmall ? "see more" : "see less",
                        style: TextStyle(
                            color: Colors.purple[600],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
