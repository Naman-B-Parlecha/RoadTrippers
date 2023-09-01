import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // This controller will store the value of the search bar
    final TextEditingController _searchController = TextEditingController();
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          'https://media.istockphoto.com/id/161727733/vector/city-map-seamless-pattern.jpg?s=612x612&w=0&k=20&c=fGiiJhCOM34NByJ7s4KivRGw5-bLSaqsNVvgXNxV8W4=',
          fit: BoxFit.cover,
        ),
        searchBarUI(),
      ],
    );
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
      //Your methods will be here
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
          onPressed: () {
            print('Places Pressed');
          },
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
            height: 200.0,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  subtitle: Text('more info here........'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
