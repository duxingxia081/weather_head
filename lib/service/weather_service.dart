import 'package:dio/dio.dart';
import '../common/httputil.dart';

class WeatherService {
  Future<Response> get(String latitude,String longitude) async {
    Response response;
    response = await HttpUtils.dio!.get('${HttpUtils.baseUrl}/$latitude,$longitude/weather?alert=true&dailysteps=1&hourlysteps=24');
    return response;
  }
}