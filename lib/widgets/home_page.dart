import 'package:flutter/material.dart';
import 'package:weather_head/widgets/weather_page.dart';

class HomePage extends StatelessWidget {
  final String? city;

  const HomePage({Key? key, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeatherPage();
  }

}
