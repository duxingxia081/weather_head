import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/weather_controller.dart';

class WeatherPage extends StatelessWidget {
  final controller = Get.put(WeatherController());
  final state = Get.find<WeatherController>().state;

  WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
