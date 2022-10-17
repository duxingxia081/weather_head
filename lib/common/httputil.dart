import 'package:dio/dio.dart';

class HttpUtils {
  static const baseUrl =
      "https://api.caiyunapp.com/v2.6/nklYQ0hORYl3ZgDa";
  final connectTimeout = 5000;
  final receiveTimeOut = 2000;
  static Dio? dio;
  factory HttpUtils() => _instance;
  static final HttpUtils _instance = HttpUtils._internal();

  /// 生成Dio实例
  HttpUtils._internal() {
    if (null == dio) {
      //通过传递一个 `BaseOptions`来创建dio实例
      var options = BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeOut);
      dio = Dio(options);
    }
  }
}
