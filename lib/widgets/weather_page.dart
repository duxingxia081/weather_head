import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/weather_controller.dart';

class WeatherPage extends StatelessWidget {
  final controller = Get.put(WeatherController());
  final state = Get.find<WeatherController>().state;

  WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getWeather('116.3176','39.9760');
    return Container(
      child: Column(
        children: [mainWeather(context)],
      ),
    );
  }

  Widget mainWeather(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.network(
            'https://www.kuk8.com/uploads/allimg/190823/3-1ZR31J121911.jpg',
          )
        ],
      ),
    );
  }
}
