import 'package:flutter/material.dart';

class OwnSideDrawer extends StatelessWidget {
  const OwnSideDrawer({super.key, required this.changeIndex});
  final Function(int index) changeIndex;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('accountName'),
            accountEmail: Text('accountEmail'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'assets/Additional-Images/ProfileImage.jpg',
                fit: BoxFit.cover,
                height: 90,
                width: 90,
              ),
            )),
          ),
          ListTile(
            onTap: () {
              changeIndex(0);
              Navigator.of(context).pop();
            },
            title: Text('Home'),
            leading: Icon(Icons.home),
          ),
          ListTile(
            onTap: () {
              changeIndex(3);
              Navigator.of(context).pop();
            },
            title: Text('Profile'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            onTap: () {
              changeIndex(1);
              Navigator.of(context).pop();
            },
            title: Text('Map'),
            leading: Icon(Icons.map),
          ),
          ListTile(
            onTap: () {
              changeIndex(2);
              Navigator.of(context).pop();
            },
            title: Text('Favourites'),
            leading: Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {},
            title: Text('Log Out'),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
