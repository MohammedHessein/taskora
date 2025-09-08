import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/features/auth/login/presentation/pages/login_view.dart';
import 'package:taskora/features/auth/register/presentation/pages/register_view.dart';
import 'package:taskora/features/auth/verify_account/presentation/pages/verify_account_view.dart';
import 'package:taskora/features/nav_bar/nav_bar.dart';
import 'package:taskora/main_view.dart';
import 'package:universal_platform/universal_platform.dart';

class AppRouters {
  static Route? routeGenerator(RouteSettings settings) {
    final isIOS = UniversalPlatform.isIOS;
    switch (settings.name) {
      case Routes.mainView:
        return _buildRoute(const MainView(), isIOS, settings);
      case Routes.login:
        return _buildRoute(const LoginView(), isIOS, settings);
      case Routes.register:
        return _buildRoute(const RegisterView(), isIOS, settings);
      case Routes.verifyAccount:
        return _buildRoute(const VerifyAccountView(), isIOS, settings);
      case Routes.home:
        return _buildRoute(const NavBar(), isIOS, settings);
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
