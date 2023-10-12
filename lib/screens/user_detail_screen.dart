import 'package:flutter/material.dart';
import 'login_page.dart';
import 'notification_page.dart';
import 'edit_profile.dart';
import 'contact_us.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  UserProfile userProfile = UserProfile(
    name: "KNK",
    email: "rachael@example.com",
    phoneNumber: "+1234567890",
    dob: "22/07/1970",
    gender: "Male",
  );

  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirm Log Out',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
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
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage(() {})),
                );
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
    Color lightBlueColor = const Color.fromARGB(255, 202, 231, 253);

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://c4.wallpaperflare.com/wallpaper/350/552/37/anime-anime-boys-monkey-d-luffy-one-piece-red-hd-wallpaper-preview.jpg",
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    userProfile.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Text("@KNK07")
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                "Your Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text(
                  "Email Id",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                trailing: Text(
                  userProfile.email,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                trailing: Text(
                  userProfile.phoneNumber,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.date_range),
                title: const Text(
                  "Date of Birth",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                trailing: Text(
                  userProfile.dob,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text(
                  "Gender",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                trailing: Text(
                  userProfile.gender,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(height: 3),
              _buildButtonWithIconAndText(
                context,
                Icons.edit,
                'Edit your profile',
                lightBlueColor,
                () async {
                  final updatedUserProfile = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditYourProfilePage(),
                    ),
                  );

                  if (updatedUserProfile != null) {
                    setState(() {
                      userProfile = updatedUserProfile;
                    });
                  }
                },
                true,
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
                true,
              ),
              const SizedBox(height: 3),
              _buildButtonWithIconAndTextWithArrow(
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
                true,
              ),
            ],
          ),
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
    bool addArrow,
  ) {
    return SizedBox(
      width: 375,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconData,
                    size: 25, color: const Color.fromARGB(255, 0, 0, 0)),
                const SizedBox(width: 10),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            if (addArrow)
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 30,
                color: Colors.black,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonWithIconAndTextWithArrow(
    BuildContext context,
    IconData iconData,
    String label,
    Color buttonColor,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: 375,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconData,
                    size: 25, color: const Color.fromARGB(255, 0, 0, 0)),
                const SizedBox(width: 10),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
