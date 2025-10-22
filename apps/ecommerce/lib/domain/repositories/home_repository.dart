import 'package:core/core.dart';

import '../entities/entities.dart';

abstract interface class HomeRepository {
  Future<DataResult<List<ProductEntity>>> getProducts();
}