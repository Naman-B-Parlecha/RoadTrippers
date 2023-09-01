// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: RootApp(),
  ));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("PROFILE"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            // COLUMN THAT WILL CONTAIN THE PROFILE
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor:
                      Colors.black, // Set background color to black
                  child: Image.network(
                    "https://i.pinimg.com/564x/6d/1e/bf/6d1ebf50b4a2c395dabbd4f8c1670c4b.jpg",
                    width: 100,
                    height: 100,
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

            // Your Details
            const Text(
              "Your Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Email
            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email Id"),
              trailing: Text("rachael@example.com"),
            ),
            // Phone Number
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone Number"),
              trailing: Text("+1234567890"),
            ),
            // Date of Birth
            const ListTile(
              leading: Icon(Icons.date_range),
              title: Text("Date of Birth"),
              trailing: Text("January 1, 1990"),
            ),
            // Gender
            const ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Gender"),
              trailing: Text("Male"),
            ),

            // Profile Completion Progress (remaining part)
            const SizedBox(height: 35),
            ...List.generate(
              customListTiles.length,
              (index) {
                final tile = customListTiles[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.black12,
                    child: ListTile(
                      leading: Icon(tile.icon),
                      title: Text(tile.title),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        if (tile.onTap != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tile.onTap!(context)),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomListTile {
  final IconData icon;
  final String title;
  final Widget Function(BuildContext)? onTap;

  CustomListTile({
    required this.icon,
    required this.title,
    this.onTap,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.book,
    title: "Edit your Profile",
    onTap: (BuildContext context) {
      return const EditProfilePage();
    },
  ),
  CustomListTile(
    icon: Icons.contact_emergency,
    title: "Contact Us",
    onTap: (BuildContext context) {
      return const ContactUsPage();
    },
  ),
  CustomListTile(
    title: "Notifications",
    icon: Icons.notifications,
    onTap: (BuildContext context) {
      return const NotificationsPage();
    },
  ),
  CustomListTile(
    title: "Logout",
    icon: Icons.logout,
  ),
];

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Name"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Phone"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Date of Birth"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to save edited data and navigate back to the profile page
                Navigator.pop(context);
              },
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      // Add your contact us content here
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      // Add your notifications content here
    );
  }
}
