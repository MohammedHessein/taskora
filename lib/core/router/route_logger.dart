import 'package:flutter/material.dart';
import 'package:taskora/core/utils/logger.dart';

class RouteLogger extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _logRoute(route, 'pushed', previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _logRoute(route, 'popped', previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _logRoute(route, 'removed', previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _logRouteReplacement(newRoute, oldRoute);
  }

  void _logRoute(
    Route<dynamic>? route,
    String action,
    Route<dynamic>? previousRoute,
  ) {
    final routeName = route?.settings.name ?? 'unknown';
    final previousRouteName = previousRoute?.settings.name ?? 'unknown';
    logRoute('Route $action: $routeName, from: $previousRouteName');
  }

  void _logRouteReplacement(
    Route<dynamic>? newRoute,
    Route<dynamic>? oldRoute,
  ) {
    final newRouteName = newRoute?.settings.name ?? 'unknown';
    final oldRouteName = oldRoute?.settings.name ?? 'unknown';
    logRoute('Route replaced: from $oldRouteName to $newRouteName');
  }
}
