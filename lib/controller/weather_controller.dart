import 'dart:developer';

import 'package:get/get.dart';
import 'package:weather_head/model/minutely.dart';
import '../service/weather_service.dart';

class WeatherController extends GetxController {
  late Minutely minutely = Minutely();

  getMinutely(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/minutely', latitude, longitude)
        .then((data) {
      //minutely = Minutely.fromJson(data);
      log(minutely.toString());
    });
  }
  getRealtime(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/realtime', latitude, longitude)
        .then((data) {
      //minutely = Minutely.fromJson(data);
      log(minutely.toString());
    });
  }
  getHourly(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/hourly?hourlysteps=1', latitude, longitude)
        .then((data) {
      //minutely = Minutely.fromJson(data);
      log(minutely.toString());
    });
  }
  getDaily(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/daily?dailysteps=1', latitude, longitude)
        .then((data) {
      //minutely = Minutely.fromJson(data);
      log(minutely.toString());
    });
  }

  getWeather(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/weather?dailysteps=1&hourlysteps=24', latitude, longitude)
        .then((data) {
      //minutely = Minutely.fromJson(data);
      log(minutely.toString());
    });
  }
}
