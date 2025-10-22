import 'package:core/core.dart';

import '../models/models.dart';

abstract interface class HomeDatasource {
  Future<DataResult<List<ProductModel>>> getProducts();
}

class HomeDatasourceImpl implements HomeDatasource {
  final Dio _dio;

  HomeDatasourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<DataResult<List<ProductModel>>> getProducts() async {
    try {
      final response = await _dio.get('/products');

      final result = (response.data as List)
          .map((item) => ProductModel.fromJson(item))
          .toList();

      return Success(result);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
