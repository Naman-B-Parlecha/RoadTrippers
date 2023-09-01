import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

enum Category {
  destination,
  activity,
  restaurant,
  accommodation,
  inspiration,
}

final categoryIcons = {
  Category.accommodation: Icons.house_rounded,
  Category.activity: Icons.local_activity,
  Category.destination: Icons.airplanemode_active,
  Category.inspiration: Icons.lightbulb,
  Category.restaurant: Icons.fastfood,
};

class SavedPlaces {
  SavedPlaces(this.name, this.latlng, this.img, this.address, this.category);
  String name;
  String img;
  LatLng latlng;
  String address;
  Category category;
}
