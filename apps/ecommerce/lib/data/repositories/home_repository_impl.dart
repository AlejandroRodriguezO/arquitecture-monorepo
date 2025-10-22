import 'package:core/core.dart';

import '../../domain/domain.dart';
import '../datasources/datasources.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource _datasource;

  HomeRepositoryImpl({required HomeDatasource datasource})
    : _datasource = datasource;

  @override
  Future<DataResult<List<ProductEntity>>> getProducts() async {
    final result = await _datasource.getProducts();

    return result;
  }
}
