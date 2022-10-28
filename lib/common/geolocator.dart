import 'package:geolocator/geolocator.dart';

class GaoLocator {
  static Future<Position> getPosition() async{
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('未启用定位服务');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('请求位置权限被拒绝');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          '位置权限被永久拒绝，我们无法请求权限');
    }
    return await Geolocator.getCurrentPosition();
  }
}
