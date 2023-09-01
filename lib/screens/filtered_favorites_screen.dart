import 'package:flutter/material.dart';
import 'package:test/models/saved_places.dart';
import 'package:test/widgets/filtered_fav_item.dart';

class FilteredFavoritesScreen extends StatefulWidget {
  FilteredFavoritesScreen(
      {required this.title, required this.filteredList, super.key});
  String title;
  List<SavedPlaces> filteredList;
  @override
  State<FilteredFavoritesScreen> createState() {
    // TODO: implement createState
    return _FilteredFavoritesScreenState();
  }
}

class _FilteredFavoritesScreenState extends State<FilteredFavoritesScreen> {
  Widget content = Center(
    child: Text('Nothing here'),
  );
  @override
  Widget build(BuildContext context) {
    if (widget.filteredList.length != 0) {
      content = ListView.builder(
          itemCount: widget.filteredList.length,
          itemBuilder: (ctx, indx) {
            return FilteredFavoriteItem(widget.filteredList[indx]);
          });
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: content,
    );
  }
}
