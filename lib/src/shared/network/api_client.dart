import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  static Dio get instance {
    final Dio dio = Dio(
      BaseOptions(
        contentType: Headers.jsonContentType,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
      ),
    );

    dio.interceptors.addAll(<Interceptor>[
      //... Any Interceptor
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    ]);

    return dio;
  }
}
