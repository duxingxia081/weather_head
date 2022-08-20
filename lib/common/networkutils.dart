import 'package:connectivity/connectivity.dart';

class NetWorkUtils {
  /// 判断是否有网络
  static Future<bool> isNetWork() async {
    bool netWork = false;
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      netWork = true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      netWork = true;
    } else if (connectivityResult == ConnectivityResult.none) {
      netWork = false;
    }
    return netWork;
  }
}
