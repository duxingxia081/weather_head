import 'package:dio/dio.dart';

class HttpUtils {
  final BASE_URL =
      "https://yiketianqi.com/api?unescape=1&version=v9&appid=85111954&appsecret=OOXn1h6D";
  final CONNECT_TIMEOUT = 5000;
  final RECEIVE_TIMEOUT = 2000;
  static Dio? _dio;
  factory HttpUtils() => _instance;
  static final HttpUtils _instance = HttpUtils._internal();
  /// 生成Dio实例
  HttpUtils._internal() {
    if (null == _dio) {
      //通过传递一个 `BaseOptions`来创建dio实例
      var options = BaseOptions(
          baseUrl: BASE_URL,
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT);
      _dio = Dio(options);
    }
  }
  Future<Response> get({String city = '深圳'}) async {
    Response response;
    response = await _dio!.get('$BASE_URL&city=$city');
    return response;
  }
}
