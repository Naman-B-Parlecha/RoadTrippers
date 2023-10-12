import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import 'package:location/location.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:test/models/autocomplate_prediction.dart';
import 'package:test/models/place_auto_complate_response.dart';
import 'package:test/screens/map_details_screen.dart';
import 'package:test/widgets/map_widget.dart';
import 'package:test/widgets/network_utility.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  LatLng? currLoc; // = LatLng(12.9722, 77.5234);
  MapWidget? mapContent; //= MapWidget(currLoc: LatLng(12.9722, 77.5234));

  void getLocation() async {
    Location location = new Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    setState(() {
      currLoc = LatLng(locationData.latitude!, locationData.longitude!);
      mapContent = MapWidget(currLoc: currLoc!);
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    getLocation();
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: mapContent,
        ),
        searchBarUI(),
      ],
    );
  }

  List<AutocompletePrediction> placePredictions = [];
  void _onSearchChanged(String value) async {
    Uri uri = Uri.https(
      "maps.googleapis.com",
      "maps/api/place/autocomplete/json",
      {
        "input": value,
        "key": "AIzaSyAWQzuZp5TP1l0QHz85ig4A4LzikMEVmhI",
      },
    );
    String? response = await NetworkUtility.fetchUrl(uri);
    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  Widget searchBarUI() {
    return FloatingSearchBar(
      hint: 'Search.....',
      openAxisAlignment: 0.0,
      axisAlignment: 0.0,
      scrollPadding: EdgeInsets.only(top: 16, bottom: 20),
      elevation: 4.0,
      physics: BouncingScrollPhysics(),
      onQueryChanged: (query) {
        _onSearchChanged(query);
      },
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            color: Colors.white,
            child: Container(
              alignment: AlignmentDirectional.topCenter,
              height: 220.0,
              color: Colors.white,
              child: ListView.builder(
                  itemCount: min(3, placePredictions.length),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        placePredictions[index].structuredFormatting!.mainText!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        placePredictions[index]
                            .structuredFormatting!
                            .secondaryText!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => MapDetailScreen(
                                  placeName: placePredictions[index]
                                      .structuredFormatting!
                                      .mainText!,
                                  placeAddress: placePredictions[index]
                                      .structuredFormatting!
                                      .secondaryText!,
                                  placeReference:
                                      placePredictions[index].placeId!,
                                ))));
                      },
                    );
                  }),
            ),
          ),
        );
      },
    );
  }
}
