import '../common/api.dart';

class WeatherService {
  Future<Map<String, dynamic>> get(String api,String latitude, String longitude) async {
    return await Api.request(api);
  }
}
