import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isNotificationOn = true;
  bool isSilentNotification = false;
  bool isEmailNotificationOn = false; // Add this line for email notification

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: ListView(
        children: [
          // Switch for notification on/off
          SwitchListTile(
            title: const Text("App Notification"),
            value: isNotificationOn,
            onChanged: (value) {
              setState(() {
                isNotificationOn = value;
              });
            },
          ),
          // Switch for silent notification
          SwitchListTile(
            title: const Text("Silent Notification"),
            value: isSilentNotification,
            onChanged: (value) {
              setState(() {
                isSilentNotification = value;
              });
            },
          ),
          // Switch for email notification
          ListTile(
            title: const Text("Email Notification"),
            trailing: Switch(
              value: isEmailNotificationOn,
              onChanged: (value) {
                setState(() {
                  isEmailNotificationOn = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
