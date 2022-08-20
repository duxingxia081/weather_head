import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_head/anim/background_anim.dart';
import 'package:weather_head/routers/page_router.dart';

import '../common/fileutils.dart';
import '../common/httputil.dart';
import '../common/networkutils.dart';
import '../common/weather_constant.dart';
import '../model/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.city});

  final String? city;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //定位获取到的城市
  String city = "深圳";

  //写入到本地的当前城市
  late String currentCity;
  late StreamSubscription streamSubscription;
  late AnimationController controller;
  late Animation<double> animation;

  //文件读写工具类
  FileUtils fileUtils = FileUtils();

  @override
  void initState() {
    super.initState();
    streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result != ConnectivityResult.none) {
        if (null == city) {
          _getCity();
        }
        setState(() {});
      }
    });
    _getCity();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.linear);
    animation = Tween(begin: -50.0, end: 50.0).animate(curve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BackgroundTransition(
        animation: animation,
        child: const BackgroundWidget(),
      ),
      Padding(
        padding:
            EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top),
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: FutureBuilder<Weather>(
            future: _getWeather(),
            builder: (BuildContext context, AsyncSnapshot<Weather> snapshot) {
              if (snapshot.hasData) {
                return CustomScrollView(
                  slivers: <Widget>[
                    _getTopBarWidget(),
                    _getTemperatureWidget(snapshot.data!),
                    _getHListViewWidget(snapshot.data!),
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: _getSliveListWidget(snapshot.data!),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    ]));
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    controller.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    bool isNetWork = await NetWorkUtils.isNetWork();
    await Future.delayed(const Duration(seconds: 2), () {
      if (isNetWork) {
        setState(() {});
      } else {
        Fluttertoast.showToast(msg: "请打开网络后刷新");
      }
    });
  }

  void _getCity() async {
    bool isNetWork = await NetWorkUtils.isNetWork();
    await [
      Permission.location,
      Permission.storage,
    ].request();
    if (isNetWork &&
        await Permission.storage.request().isGranted &&
        await Permission.storage.request().isGranted) {
      AMapFlutterLocation locationPlugin = AMapFlutterLocation();

      ///注册定位结果监听
      locationPlugin.onLocationChanged().listen((Map<String, Object> result) {
        city = result['city'] as String;
        if (city!.contains('市')) {
          city = city!.split("市")[0];
        } else if (city!.contains('区')) {
          city = city!.split("区")[0];
        } else if (city!.contains('县')) {
          city = city!.split("县")[0];
        } else if (city!.contains('州')) {
          city = city!.split("州")[0];
        }
      });
      setState(() {});
    } else {
      Fluttertoast.showToast(msg: "请打开网络并赋予应用定位权限与存储权限");
    }
  }

  Future<Weather> _getWeather() async {
    Weather weather = Weather();
    try {
      bool isNetWork = await NetWorkUtils.isNetWork();
      if (isNetWork) {
        final response = await HttpUtils().get(city: city!);
        if (response.statusCode == 200) {
          fileUtils.writeTxt(response.toString());
          weather = Weather.fromJson(json.decode(response.toString()));
          city = weather.city!;
          currentCity = city!;
        } else {
          Fluttertoast.showToast(msg: "网络错误");
        }
      } else {
        if (currentCity != city) {
          Fluttertoast.showToast(msg: "必须开启网络");
        }
        String jsonStr = await fileUtils.readAppDocumentFile();
        if (jsonStr.length > 100) {
          weather = Weather.fromJson(json.decode(jsonStr));
          city = weather.city!;
          currentCity = city!;
        } else {
          Fluttertoast.showToast(msg: "第一次打开天气应用必须开启网络");
        }
      }
      return weather;
    } catch (e) {
      throw Exception('网址有误');
    }
  }

  /// 标题栏
  Widget _getTopBarWidget() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                city ?? '',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.dialpad,
                  color: Colors.white,
                ),
                onPressed: () {
                  PageRouter.router
                      .navigateTo(context, PageRouter.cityListPage)
                      .then((result) {
                    if (result == null) {
                      return;
                    }
                    setState(() {
                      city = result;
                    });
                  }).catchError((error) {
                    if (kDebugMode) {
                      print("$error");
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 核心温度显示
  Widget _getTemperatureWidget(Weather weather) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  weather.data![0].tem!,
                  style: const TextStyle(fontSize: 100, color: Colors.white),
                ),
                const Text(
                  '℃',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
            Text(
              "${weather.data![0].tem1}℃/${weather.data![0].tem2}℃",
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              '${weather.data![0].wea} 空气${weather.data![0].airLevel}',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text(
              '更新时间：${weather.updateTime}',
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  /// 24小时天气
  Widget _getHListViewWidget(Weather weather) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      "${weather.data![0].hours![index].hours!.split('时')[0]}:00",
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const Spacer(),
                    Image.asset(
                      weather_file[weather.data![0].hours![index].wea]!,
                      color: Colors.orange,
                      width: 25,
                    ),
                    const Spacer(),
                    Text(
                      "${weather.data![0].hours![index].tem}℃",
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: weather.data![0].hours!.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget _getSliveListWidget(Weather weather) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  weather.data![index].date!,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                const Spacer(),
                Image.asset(
                  weather_file[weather.data![index].weaNight]!,
                  color: Colors.orange,
                  width: 25,
                ),
                const Spacer(),
                Text(
                  "${weather.data![index].tem1}℃/${weather.data![index].tem2}℃",
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
              height: 30,
            ),
          ],
        );
      }, childCount: weather.data!.length),
    );
  }
}
