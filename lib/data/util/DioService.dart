import 'package:dio/dio.dart';
import 'DioInterceptor.dart';

class DioServices {
  static final DioServices _dioServices = DioServices._internal();
  factory DioServices() => _dioServices;
  Map<String, dynamic> dioInformation = {};

  static Dio _dio = Dio();

  DioServices._internal() {
    BaseOptions _options = BaseOptions(
      baseUrl: "https://api.github.com",
      connectTimeout: const Duration(milliseconds: 10000),
      receiveTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 10000),
      headers: {
        'X-GitHub-Api-Version': '2022-11-28'
      },
    );
    _dio = Dio(_options);
    _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio => _dio;
}