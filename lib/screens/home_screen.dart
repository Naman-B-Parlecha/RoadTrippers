import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabbarcontroller = TabController(
        length: 4,
        vsync:
            this); // for controlling the tab bar length depends on number of tabs
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {},
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
                        margin: EdgeInsets.only(top: 15, right: 15),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://raw.githubusercontent.com/Naman-Parlecha/RoadTrippers/naman/assets/images/machi_pichi.jpg'),
                                fit: BoxFit.cover)),
                      );
                    },
                  ),
                ),
                Text('Need to add for 2'),
                Text('Need to add for 3'),
                Text('Need to add for 4'),
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://raw.githubusercontent.com/Naman-Parlecha/RoadTrippers/naman/assets/images/machi_pichi.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Text('SkyDiving')
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
