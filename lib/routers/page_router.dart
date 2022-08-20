import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';

import '../widgets/error_page.dart';
import '../widgets/home_page.dart';

class PageRouter {
  static String homePage = "/homePage";
  static String cityListPage = '/homePage/cityListPage';
  static final Map<String, Handler> pageRouters = {
    "/": Handler(
      handlerFunc: (context, param) {
        return const HomePage();
      },
    ),
    homePage: Handler(
      handlerFunc: (context, param) {
        return const HomePage();
      },
    ),
  };
  static final router = FluroRouter();
  static final notFoundHandler =
      Handler(handlerFunc: (context, params) {
    return const ErrorPage();
  });

  static setRouters() {
    pageRouters.forEach((path, handler) {
      router.define(path, handler: handler);
    });
    router.notFoundHandler = notFoundHandler;
  }
}
