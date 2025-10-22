

import 'package:core/helpers/type_def.dart';

import '../../domain/domain.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price,
  });

  factory ProductModel.fromJson(JsonMap json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
    );
  }
}
