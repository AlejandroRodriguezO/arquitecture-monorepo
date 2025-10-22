import 'package:core/core.dart';
import 'package:ecommerce/presentation/cubit/home_cubit.dart';
import 'package:ecommerce/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

final ecommerceRoute = [
  GoRoute(
    name: EcommerceRoute.home,
    path: EcommerceRoute.home,
    builder: (BuildContext context, GoRouterState state) {
      return BlocProvider<HomeCubit>(
        create: (_) => locator<HomeCubit>()..fetchProducts(),
        child: const HomePage(),
      );
    },
  ),
];
