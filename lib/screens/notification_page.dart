import 'package:flutter/material.dart';
import 'shared_preferences_manager.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final SharedPreferencesManager sharedPreferencesManager =
      SharedPreferencesManager();

  @override
  void initState() {
    super.initState();
    // Initialize SharedPreferencesManager
    sharedPreferencesManager.initialize();
  }

  @override
  Widget build(BuildContext context) {
    bool isNotificationOn = sharedPreferencesManager.isNotificationOn;
    bool isSilentNotification = sharedPreferencesManager.isSilentNotification;
    bool isEmailNotificationOn = sharedPreferencesManager.isEmailNotificationOn;

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
              sharedPreferencesManager.isNotificationOn = isNotificationOn;
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
              sharedPreferencesManager.isSilentNotification =
                  isSilentNotification;
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
                sharedPreferencesManager.isEmailNotificationOn =
                    isEmailNotificationOn;
              },
            ),
          ),
        ],
      ),
    );
  }
}
