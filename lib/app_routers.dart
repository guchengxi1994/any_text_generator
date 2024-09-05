import 'package:flutter/material.dart';

import 'splash/splash_router.dart';

class AppRouters {
  static Map<String, WidgetBuilder> get routes => {
        ...SplashScreenRouter.builder,
      };
}
