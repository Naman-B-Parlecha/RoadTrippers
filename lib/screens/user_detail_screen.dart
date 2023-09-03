// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:test/screens/login_page.dart';
import 'notification_page.dart';
import 'package:test/screens/edit_profile.dart';
import 'contact_us.dart';
import 'package:image_picker/image_picker.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirm Log Out',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          content: const Text('Are you sure you want to leave?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'No',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add your log out logic here
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage(() {})));
              },
              child: Text(
                'Yes',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color lightBlueColor = const Color.fromARGB(255, 197, 229, 255);

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://c4.wallpaperflare.com/wallpaper/350/552/37/anime-anime-boys-monkey-d-luffy-one-piece-red-hd-wallpaper-preview.jpg",
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "KNK",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("@Ramu_001")
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Your Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email Id"),
                  trailing: Text("rachael@example.com"),
                ),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone Number"),
                  trailing: Text("+1234567890"),
                ),
                const ListTile(
                  leading: Icon(Icons.date_range),
                  title: Text("Date of Birth"),
                  trailing: Text("January 1, 1990"),
                ),
                const ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text("Gender"),
                  trailing: Text("Male"),
                ),
                const SizedBox(height: 10),
                _buildButtonWithIconAndText(
                  context,
                  Icons.edit,
                  'Edit your profile',
                  lightBlueColor,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditYourProfilePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 3),
                _buildButtonWithIconAndText(
                  context,
                  Icons.contact_mail,
                  'Contact Us',
                  lightBlueColor,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactUs(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 3),
                _buildButtonWithIconAndText(
                  context,
                  Icons.notifications,
                  'Notification',
                  lightBlueColor,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 3),
                _buildButtonWithIconAndText(
                  context,
                  Icons.logout,
                  'Log Out',
                  lightBlueColor,
                  () {
                    _showLogoutConfirmationDialog(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonWithIconAndText(
    BuildContext context,
    IconData iconData,
    String label,
    Color buttonColor,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: 290,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        ),
        icon:
            Icon(iconData, size: 25, color: const Color.fromARGB(255, 0, 0, 0)),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
