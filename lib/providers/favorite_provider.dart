import 'package:flutter/foundation.dart';
import 'package:test/models/store_places.dart';
import 'package:test/widgets/fav_place.dart';

class FavoriteProvider extends ChangeNotifier{
  final List<StorePlaces> _favPlaces = [];

  List<StorePlaces> get favPlaces => _favPlaces;

  void toggleFavorites(StorePlaces place) {
    final isPresent = _favPlaces.contains(place);
    if (isPresent) {
      _favPlaces.remove(place);
    } else {
      _favPlaces.add(place);
    }
    notifyListeners();
  }

  bool isPresent(StorePlaces place) {
    final isPresent = _favPlaces.contains(place);
    return isPresent;
  }
}
