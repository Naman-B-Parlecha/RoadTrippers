import 'package:latlong2/latlong.dart';

enum Category {
  destination,
  activity,
  restaurant,
  accommodation,
  inspiration,
}

class SavedPlaces {
  SavedPlaces(this.name, this.latlng, this.img, this.address, this.category);
  String name;
  String img;
  LatLng latlng;
  String address;
  Category category;
}
