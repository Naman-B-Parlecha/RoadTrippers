import 'package:flutter/material.dart';
import 'package:test/models/saved_places.dart';
import 'package:test/models/store_places.dart';
import 'package:test/widgets/category_item.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({required this.title, required this.filteredList, super.key});
  String title;
  List<StorePlaces> filteredList;
  @override
  State<CategoryScreen> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<CategoryScreen> {
  Widget content = Center(
    child: Text('Nothing here'),
  );
  @override
  Widget build(BuildContext context) {
    if (widget.filteredList.length != 0) {
      content = ListView.builder(
          itemCount: widget.filteredList.length,
          itemBuilder: (ctx, indx) {
            return CategoryItem(widget.filteredList[indx]);
          });
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: content,
    );
  }
}
