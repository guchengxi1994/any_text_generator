import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json/json.dart';

@JsonCodable()
class Settings {
  List<String> youAreA = [];
  List<String> roles = [];
  List<String> moods = [];
}

extension SettingsExtension on Settings {
  static Future<Settings> loadFromAsset() async {
    return Settings.fromJson(
        jsonDecode(await rootBundle.loadString("assets/settings.json")));
  }
}
