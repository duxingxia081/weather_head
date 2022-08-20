import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_head/widgets/search_page.dart';

class CityListPage extends StatefulWidget {
  const CityListPage({Key? key}) : super(key: key);

  @override
  State<CityListPage> createState() => _CityListPageState();
}

class _CityListPageState extends State<CityListPage> {
  List<String> cityStr = [
    '北京',
    '上海',
    '广州',
    '深圳',
    '天津',
    '武汉',
    '沈阳',
    '重庆',
    '杭州',
    '南京',
    '哈尔滨',
    '长春',
    '呼和浩特',
    '石家庄',
    '银川',
    '乌鲁木齐',
    '拉萨',
    '西宁',
    '西安',
    '兰州',
    '太原',
    '昆明',
    '南宁',
    '成都',
    '长沙',
    '济南',
    '南昌',
    '合肥',
    '郑州',
    '福州',
    '海口',
    '秦皇岛',
    '三亚',
    '香港',
    '桂林',
    '宜昌',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQueryData.fromWindow(window).padding.top),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _getTopBarWidget(),
                  _getSearchWidget(),
                  _getCityGridViewWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// 标题栏
  Widget _getTopBarWidget() {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Text(
          '选择城市',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  /// 搜索框
  Widget _getSearchWidget() {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 40,
          ),
          child: TextField(
            onTap: () async {
              String city = await showSearch(
                  context: context, delegate: SearchBarDelegate());
              if ('' != city) {
                Navigator.pop(context, city);
              }
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 10),
              prefixIcon: const Icon(Icons.search),
              hintText: '搜索城市',
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                //未选中时候的颜色
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                //选中时外边框颜色
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCityGridViewWidget() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0.0,
        childAspectRatio: 3 / 1.5,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(0.0, 1.0),
                  blurRadius: 2.0,
                  color: Colors.white,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                cityStr[index],
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context, cityStr[index]);
          },
        );
      },
      itemCount: cityStr.length,
    );
  }
}
