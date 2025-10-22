import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'bank_route.dart';
import 'ecommerce_route.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static final GoRouter _router = GoRouter(
    initialLocation: EcommerceRoute.home,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[...ecommerceRoute, ...bankRoute],
  );

  static GoRouter get router => _router;
}
