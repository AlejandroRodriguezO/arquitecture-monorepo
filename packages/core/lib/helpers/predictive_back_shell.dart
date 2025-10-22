import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

bool canPop(BuildContext context) {
    final RouteMatchBase? lastMatch = GoRouter.of(context)
        .routerDelegate
        .currentConfiguration
        .matches
        .lastOrNull;

    if (lastMatch is ShellRouteMatch) {
      return lastMatch.matches.length == 1;
    }
    return true;
  }