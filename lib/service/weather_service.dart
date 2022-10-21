import '../common/api.dart';

class WeatherService {
  Future<Map<String, dynamic>> get(String api) async {
    return await Api.request(api);
  }
}
