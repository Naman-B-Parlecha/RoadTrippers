import 'package:flutter/material.dart';
import 'package:test/models/saved_places.dart';
import 'package:test/models/store_places.dart';
import 'package:test/screens/place_details_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FilteredFavoriteItem extends StatefulWidget {
  FilteredFavoriteItem(this.place, {super.key});
  final SavedPlaces place;
  @override
  State<FilteredFavoriteItem> createState() {
    // TODO: implement createState
    return _FilteredFavoriteItemState();
  }
}

class _FilteredFavoriteItemState extends State<FilteredFavoriteItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color:
          Theme.of(context).colorScheme.onSecondaryContainer.withOpacity(0.1),
      margin: EdgeInsets.only(bottom: 4),
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(widget.place.img),
            fit: BoxFit.cover,
            height: 100,
            width: double.infinity,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.place.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                '4.25 ', //display it here the rating value here
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
              RatingBarIndicator(
                //use rating value from api using place.latlng
                rating: 4.25,
                //
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 11,
                direction: Axis.horizontal,
              ),
            ],
          ),
          Text(
            widget.place.address,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            maxLines: 2,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => PlaceDetailScreen(
                              place: StorePlaces(
                                  widget.place.name,
                                  widget.place.latlng,
                                  widget.place.img,
                                  widget.place.address,
                                  widget.place.category.name),
                            )));
                  },
                  icon: Icon(
                    Icons.directions,
                    size: 16,
                  ),
                  label: Text(
                    'Directions',
                    style: TextStyle(fontSize: 14),
                  )),
              SizedBox(
                width: 8,
              ),
              OutlinedButton.icon(
                  onPressed: () {
                    Share.share(
                        'Check out ${widget.place.name} on RoadTrippers!! Location: ${widget.place.address}');
                  },
                  icon: Icon(
                    Icons.share,
                    size: 16,
                  ),
                  label: Text(
                    'Share',
                    style: TextStyle(fontSize: 14),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
