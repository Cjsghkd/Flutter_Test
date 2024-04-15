import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    // print("BaseUrl ${options.baseUrl}");
    // print("Path ${options.path}");
    // print("Parameters ${options.queryParameters}");
    // print("Data ${options.data}");
    // print("Connect Timeout ${options.connectTimeout}");
    // print("Send Timeout ${options.sendTimeout}");
    // print("Receive Timeout ${options.receiveTimeout}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}");
    // print(response.statusCode);
    print(response.data);
    // print("BaseUrl ${response.requestOptions.baseUrl}");
    // print("Path ${response.requestOptions.path}");
    // print("Parameters ${response.requestOptions.queryParameters}");
    // print("Data ${response.requestOptions.data}");
    // print("Connect Timeout ${response.requestOptions.connectTimeout}");
    // print("Send Timeout ${response.requestOptions.sendTimeout}");
    // print("Receive Timeout ${response.requestOptions.receiveTimeout}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    print("ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    // print("Error ${err.error}");
    // print("Error Message ${err.message}");
    super.onError(err, handler);
  }
}