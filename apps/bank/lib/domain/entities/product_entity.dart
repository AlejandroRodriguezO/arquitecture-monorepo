import 'package:core/core.dart';

class ProductEntity extends Equatable {
  final int id;
  final String title;
  final String description;
  final double price;

  const ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [id, title, description, price];
}
