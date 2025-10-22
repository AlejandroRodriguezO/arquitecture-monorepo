import 'dart:io';


import '../core.dart';

class DioClient {
  DioClient({
    String? baseUrl,
  }) :
       dio = Dio(
         BaseOptions(
           baseUrl: baseUrl ?? Env.baseUrl,
           connectTimeout: const Duration(seconds: 10),
           receiveTimeout: const Duration(seconds: 15),
           headers: <String, dynamic>{
             HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
           },
         ),
       ) {
    dio.interceptors.addAll(<Interceptor>[
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }
  final Dio dio;
}
