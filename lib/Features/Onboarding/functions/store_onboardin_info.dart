import 'package:shared_preferences/shared_preferences.dart';

storeOnboardinInfo() async {
  bool isViewd = true;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isViewd", isViewd);
}
