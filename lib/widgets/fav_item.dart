import 'package:flutter/material.dart';
import 'package:test/models/saved_places.dart';
import 'package:test/models/store_places.dart';
import 'package:test/screens/place_details_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class FavItem extends StatelessWidget {
  const FavItem(this.place, {super.key});
  final SavedPlaces place;
  @override
  Widget build(BuildContext context) {
    final categoryIcons = {
      Category.accommodation: Icons.house_rounded,
      Category.activity: Icons.local_activity,
      Category.destination: Icons.airplanemode_active,
      Category.inspiration: Icons.lightbulb,
      Category.restaurant: Icons.fastfood,
    };
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => PlaceDetailScreen(
                    place: StorePlaces(place.name, place.latlng, place.img,
                        place.address, place.category.name),
                  )));
        },
        child: Container(
          width: 150,
          color: Color.fromARGB(220, 255, 255, 255),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(place.img),
                fit: BoxFit.cover,
                height: 100,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      place.address,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          place.category.name[0].toUpperCase() +
                              place.category.name.substring(1),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontSize: 12,
                                  ),
                        ),
                        Spacer(),
                        Icon(
                          categoryIcons[place.category],
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer
                              .withOpacity(0.5),
                          size: 16,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
