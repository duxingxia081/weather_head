import 'package:get/get.dart';

import '../model/daily_entity.dart';
import '../model/hourly_entity.dart';
import '../model/minutely_entity.dart';
import '../model/realtime_entity.dart';
import '../service/weather_service.dart';



class WeatherController extends GetxController {
  MinutelyEntity minutely = MinutelyEntity();
  RealtimeEntity realtime = RealtimeEntity();
  HourlyEntity hourly = HourlyEntity();
  DailyEntity daily = DailyEntity();

  //分钟级
  getMinutely(String latitude, String longitude) async {
    WeatherService().get('/$latitude,$longitude/minutely').then((data) {
      minutely = MinutelyEntity.fromJson(data);
    });
  }

  //实时
  getRealtime(double latitude, double longitude) async {
    WeatherService().get('/$latitude,$longitude/realtime').then((data) {
      print(data);
      realtime = RealtimeEntity.fromJson(data);
    });
  }

  //小时
  getHourly(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/hourly?hourlysteps=1')
        .then((data) {
      hourly = HourlyEntity.fromJson(data);
    });
  }

  //天
  getDaily(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/daily?dailysteps=1')
        .then((data) {
      daily = DailyEntity.fromJson(data);
    });
  }

  //汇总
  getWeather(String latitude, String longitude) async {
    WeatherService()
        .get('/$latitude,$longitude/weather?dailysteps=1&hourlysteps=24')
        .then((data) {
      //weather = WeatherEntity.fromJson(data);
    });
  }
}
