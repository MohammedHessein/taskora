import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class AppRouters {
  static Route? routeGenerator(RouteSettings settings) {
    final isIOS = UniversalPlatform.isIOS;
    switch (settings.name) {
      default:
        return null;
    }
  }

  static Route<dynamic> _buildRoute(
    Widget widget,
    bool isIOS,
    RouteSettings settings,
  ) {
    return isIOS
        ? CupertinoPageRoute(
            builder: (BuildContext context) => widget,
            settings: settings,
          )
        : MaterialPageRoute(
            builder: (BuildContext context) => widget,
            settings: settings,
          );
  }
}
