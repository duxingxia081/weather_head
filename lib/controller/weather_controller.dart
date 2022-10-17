import 'dart:io';

import 'package:get/get.dart';
import '../model/weathers.dart';
import '../service/weather_service.dart';

class WeatherController extends GetxController {
  final Weathers state = Weathers();

  getWeather(String latitude, String longitude) async {
    WeatherService().get(latitude, longitude).then((res) => {
          if (HttpStatus.ok == res.statusCode) {Weathers.fromJson(res.data)}
        });
  }
}
