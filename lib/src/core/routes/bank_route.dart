import 'package:bank/presentation/cubit/home_cubit.dart';
import 'package:bank/presentation/pages/home_page.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

final bankRoute = [
  GoRoute(
    name: BankRoute.home,
    path: BankRoute.home,
    builder: (BuildContext context, GoRouterState state) {
      return BlocProvider(
        create: (_) => locator<HomeCubit>()..fetchProducts(),
        child: const HomePage(),
      );
    },
  ),
];
