import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  var image = {
    'Chichen-Itza.jpg': 'Chichen Itza',
    'Colosseum.jpg': 'Colosseum',
    'machi_pichi.jpg': 'MachiPichu',
    'TajMahal.jpg': 'TajMahal',
  };
  var exploreMoreImages = {
    'HotAirBalloon.jpg': 'HotAirBalloon',
    'MountainClimbing.jpg': 'Mountain Climbing',
    'ScubaDiving.jpg': 'Scuba Diving',
    'Skiing.jpg': 'Skiing',
  };
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
                        return Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 15, right: 15),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/${image.keys.elementAt(index)}"),
                                  fit: BoxFit.cover)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(image.values.elementAt(index),
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
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
                        return Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 15, right: 15),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/${image.keys.elementAt(index)}"),
                                  fit: BoxFit.cover)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(image.values.elementAt(index),
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
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
                        return Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 15, right: 15),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/${image.keys.elementAt(index)}"),
                                  fit: BoxFit.cover)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(image.values.elementAt(index),
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
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
                        return Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(top: 15, right: 15),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/${image.keys.elementAt(index)}"),
                                  fit: BoxFit.cover)),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(image.values.elementAt(index),
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
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
                    'Explore more',
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
              const SizedBox(height: 20),
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
                            // need to add the functionality here ------------
                            print(exploreMoreImages.values.elementAt(index));
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
