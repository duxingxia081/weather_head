import 'package:dio/dio.dart';

class HttpUtils {
  final baseUrl =
      "https://yiketianqi.com/api?unescape=1&version=v9&appid=85111954&appsecret=OOXn1h6D";
  final connectTimeout = 5000;
  final receiveTimeOut = 2000;
  static Dio? _dio;
  factory HttpUtils() => _instance;
  static final HttpUtils _instance = HttpUtils._internal();

  /// 生成Dio实例
  HttpUtils._internal() {
    if (null == _dio) {
      //通过传递一个 `BaseOptions`来创建dio实例
      var options = BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeOut);
      _dio = Dio(options);
    }
  }
  Future<Response> get({String city = '深圳'}) async {
    Response response;
    response = await _dio!.get('$baseUrl&city=$city');
    return response;
  }
}
