import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/geolocator.dart';
import '../controller/weather_controller.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final controller = Get.put(WeatherController());
  final minutely = Get.find<WeatherController>().minutely;
  final realtime = Get.find<WeatherController>().realtime;

  @override
  void initState() {
    GaoLocator.getPosition()
        .then((position) => controller.getRealtime(position.latitude, position.longitude));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.white),
      child: Column(
        children: [mainWeather(context)],
      ),
    );
  }

  Widget mainWeather(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Stack(
        children: [
          Image.network(
            'https://www.kuk8.com/uploads/allimg/190823/3-1ZR31J121911.jpg',
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              realtime.result == null
                  ? ''
                  : realtime.result!.realtime!.temperature!.toString(),
              style: const TextStyle(fontSize: 56),
            ),
          )
        ],
      ),
    );
  }
}
