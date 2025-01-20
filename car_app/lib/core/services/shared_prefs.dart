//import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  // ignore: non_constant_identifier_names
  get SharedPreferens => null;

  Future<void> save  ({required String key, required String value,}) async {
    final prefs = await SharedPreferens.getInstance();
    prefs.setString(key, value);
  }
}

Future<String?> read ({
  required String key,
// ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
}) async {var SharedPreferens;
final prefs =await SharedPreferens.getInstance();
return prefs.getString(key);
}

abstract class StarageKey {
  static const String login = 'LOGIN';
  static const String password = 'PASSWORD';
}