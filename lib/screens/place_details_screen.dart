import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/models/store_places.dart';

class PlaceDetailScreen extends StatefulWidget {
  const PlaceDetailScreen({
    super.key,
    required this.place,
  });
  final StorePlaces place;
  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  int selectedStars = 0;

  @override
  Widget build(BuildContext context) {
    final Name = widget.place.name;
    final ImagePlace = widget.place.img;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ImagePlace), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              top: 35,
              left: 5,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ))),
          Positioned(
            top: 280,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 15, top: 15),
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  // SizedBox(height: 5),

                  Text(
                    widget.place.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.purple[800], fontSize: 17),
                  ),

                  const SizedBox(height: 13),
                  Row(
                    children: [
                      Wrap(
                          children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        );
                      })),
                      const SizedBox(width: 7),
                      Text("(5.0)", style: TextStyle(color: Colors.purple[800]))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text("Rate Your Experience!",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold)),
                  Text('We value your feedback! "Share your thoughts with us',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.85))),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedStars = index;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: index == selectedStars
                                      ? Colors.black
                                      : Colors.blueGrey[50],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              margin: const EdgeInsets.all(7),
                              child: Center(
                                  child: Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    color: index == selectedStars
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('MetaData',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.85))),

                  const SizedBox(height: 75),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          // need to add code which will add this place to favourite screen //
                        },
                        child: Container(
                          height: 70,
                          width: 90,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // need to add code which will open up map and show routing //
                        },
                        child: Container(
                          height: 70,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Navigation',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                              const SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 20,
                                  color: Colors.white.withOpacity(0.5)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 20,
                                  color: Colors.white.withOpacity(0.75)),
                              const Icon(Icons.arrow_forward_ios_rounded,
                                  size: 20, color: Colors.white),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
