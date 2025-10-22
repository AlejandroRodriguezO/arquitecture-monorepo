import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bank Dummy products')),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return switch (state) {
            HomeLoaded data => ListView.builder(
              itemCount: data.products.length,
              itemBuilder: (context, index) {
                final product = data.products[index];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Text('\$${product.price}'),
                );
              },
            ),

            HomeError() => throw UnimplementedError(),

            _ => const Center(child: CircularProgressIndicator()),
          };
        },
      ),
    );
  }
}
