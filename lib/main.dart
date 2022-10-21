import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_head/routers/page_router.dart';
import 'package:weather_head/widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    PageRouter.setRouters();
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.fade,
      home: HomePage(),
    );
  }
}