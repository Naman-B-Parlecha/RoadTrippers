import 'package:latlong2/latlong.dart';

class StorePlaces {
  StorePlaces(this.name, this.latlng, this.img, this.address, this.category);
  String name;
  String img;
  LatLng latlng;
  String address;
  String category;
}
