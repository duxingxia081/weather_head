import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HttpUtils {
  static const baseUrl = "https://api.caiyunapp.com/v2.6/nklYQ0hORYl3ZgDa";
  final connectTimeout = 5000;
  final receiveTimeOut = 2000;
  Dio? _dio;

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

  static HttpUtils getInstance({String? baseUrl}) {
    if (baseUrl == null) {
      return _instance._normal();
    } else {
      return _instance._baseUrl(baseUrl);
    }
  }

  //用于指定特定域名
  HttpUtils _baseUrl(String baseUrl) {
    if (_dio != null) {
      _dio!.options.baseUrl = baseUrl;
    }
    return this;
  }

  //一般请求，默认域名
  HttpUtils _normal() {
    if (_dio != null) {
      if (_dio!.options.baseUrl != baseUrl) {
        _dio!.options.baseUrl = baseUrl;
      }
    }
    return this;
  }

  ///通用的GET请求
  get(String api, {Map<String, dynamic>? params, withLoading = true}) async {
    if (withLoading) {
      Fluttertoast.showToast(msg: "请求中!");
    }
    Response response;
    try {
      response = await _dio!.get(api, queryParameters: params);
      if (withLoading) {
        Fluttertoast.cancel();
      }
    } on DioError catch (e) {
      if (withLoading) {
        Fluttertoast.cancel();
      }
      return null;
    }
    return response.data;
  }

  ///通用的POST请求
  post(String api, {Map<String, dynamic>? params, withLoading = true}) async {
    if (withLoading) {
      Fluttertoast.showToast(msg: "请求中!");
    }
    Response response;

    try {
      response = await _dio!.post(api, data: params);
      if (withLoading) {
        Fluttertoast.cancel();
      }
    } on DioError catch (e) {
      if (withLoading) {
        Fluttertoast.cancel();
      }
      return null;
    }

    return response.data;
  }
}
