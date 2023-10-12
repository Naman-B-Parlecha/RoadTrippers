import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static final SharedPreferencesManager _instance =
      SharedPreferencesManager._internal();

  factory SharedPreferencesManager() {
    return _instance;
  }

  SharedPreferencesManager._internal();

  SharedPreferences? _prefs;

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get isNotificationOn {
    return _prefs?.getBool('notificationOn') ?? true;
  }

  set isNotificationOn(bool value) {
    _prefs?.setBool('notificationOn', value);
  }

  bool get isSilentNotification {
    return _prefs?.getBool('silentNotification') ?? false;
  }

  set isSilentNotification(bool value) {
    _prefs?.setBool('silentNotification', value);
  }

  bool get isEmailNotificationOn {
    return _prefs?.getBool('emailNotificationOn') ?? false;
  }

  set isEmailNotificationOn(bool value) {
    _prefs?.setBool('emailNotificationOn', value);
  }
}
