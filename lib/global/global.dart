import 'settings.dart';

export './settings.dart';

class Global {
  static late Settings settings;

  init() async {
    settings = await Settings.loadFromAsset();
  }
}
