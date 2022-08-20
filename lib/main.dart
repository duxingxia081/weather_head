import 'dart:convert';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:flutter/material.dart';
import 'package:weather_head/routers/page_router.dart';
import 'package:weather_head/widgets/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AMapFlutterLocation.updatePrivacyShow(true, true);
  AMapFlutterLocation.updatePrivacyAgree(true);
  AMapFlutterLocation.setApiKey(
      "04d21395d653a9be490749de233ade3e", "04d21395d653a9be490749de233ade3e");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    PageRouter.setRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '头顶上的天气',
      onGenerateRoute: PageRouter.router.generator,
      home: const HomePage(city: '深圳',),
    );
  }
}
