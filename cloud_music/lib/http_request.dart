import 'package:dio/dio.dart';

class HttpRequest {
  static Dio dio;
  BaseOptions options;

  HttpRequest([BaseOptions baseOptions]) {
    if (baseOptions == null) {
      baseOptions = BaseOptions(
          baseUrl: 'http://192.168.2.103:3000',
          connectTimeout: 5000,
          receiveTimeout: 3000);
    }
    this.options = baseOptions;
    dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options) => {},
        onResponse: (response) => {},
        onError: (e) => {}));
  }
}
