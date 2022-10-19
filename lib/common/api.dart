import 'httputil.dart';

class Api {
  static request(String api, {String? param}) {
    Map<String, dynamic> params = {};
    params['param'] = param;
    return HttpUtils.getInstance().get(api, params: params);
  }
}
