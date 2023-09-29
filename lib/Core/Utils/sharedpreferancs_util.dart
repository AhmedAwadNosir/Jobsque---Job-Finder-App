import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static late SharedPreferences _preferences;

  static Future<SharedPreferences> getSharedPreferencesInstance() async {
    _preferences = await SharedPreferences.getInstance();
    return _preferences;
  }

  static Future<String> getString( String key,
  ) async {
    SharedPreferences prefs = await getSharedPreferencesInstance();
    return prefs.getString(key) ?? "key deosn,t exist";
  }
  static Future<int> getInt( String key,
  ) async {
    SharedPreferences prefs = await getSharedPreferencesInstance();
    return prefs.getInt(key) ?? 0;
  }

  // You can add similar methods for other data types (int, double, etc.)
}
