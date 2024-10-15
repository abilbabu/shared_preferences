import 'package:shared_preferences/shared_preferences.dart';

class HomescreenController {
  static late final SharedPreferences prefs;
  static String? data = "empty";
  static initSharedprefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future addData(String name) async {
    await prefs.setString("name", name);
  }

  static getData() {
    data = prefs.getString("name");
  }
}
