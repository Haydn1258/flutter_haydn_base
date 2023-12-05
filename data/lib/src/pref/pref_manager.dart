import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  PrefManager({required this.pref});
  final SharedPreferences pref;

  String? get name => pref.getString(_KEY_NAME) ?? '';
  set name(String? name) => pref.setString(_KEY_NAME, name ?? '');

  int? get age => pref.getInt(_KEY_AGE) ?? 0;
  set age(int? age) => pref.setInt(_KEY_AGE, age ?? 0);
}

/// KEY
const String _KEY_NAME = "_KEY_NAME";
const String _KEY_AGE = "_KEY_AGE";
