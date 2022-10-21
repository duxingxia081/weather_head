/// status : "ok"
/// api_version : "v2.6"
/// api_status : "alpha"
/// lang : "zh_CN"
/// unit : "metric"
/// tzshift : 28800
/// timezone : "Asia/Shanghai"
/// server_time : 1666253232
/// location : [39.976,116.3176]
/// result : {"realtime":{"status":"ok","temperature":15.0,"humidity":0.55,"cloudrate":1.0,"skycon":"LIGHT_HAZE","visibility":5.0,"dswrf":227.6,"wind":{"speed":2.02,"direction":200.0},"pressure":101025.16,"apparent_temperature":14.4,"precipitation":{"local":{"status":"ok","datasource":"radar","intensity":0.0},"nearest":{"status":"ok","distance":59.87,"intensity":0.1875}},"air_quality":{"pm25":101,"pm10":154,"o3":38,"so2":4,"no2":62,"co":0.7,"aqi":{"chn":133,"usa":174},"description":{"chn":"轻度污染","usa":"中度污染"}},"life_index":{"ultraviolet":{"index":2.0,"desc":"很弱"},"comfort":{"index":6,"desc":"凉爽"}}},"primary":0}

class RealtimeEntity {
  RealtimeEntity({
      this.status, 
      this.apiVersion, 
      this.apiStatus, 
      this.lang, 
      this.unit, 
      this.tzshift, 
      this.timezone, 
      this.serverTime, 
      this.location, 
      this.result,});

  RealtimeEntity.fromJson(dynamic json) {
    status = json['status'];
    apiVersion = json['api_version'];
    apiStatus = json['api_status'];
    lang = json['lang'];
    unit = json['unit'];
    tzshift = json['tzshift'];
    timezone = json['timezone'];
    serverTime = json['server_time'];
    location = json['location'] != null ? json['location'].cast<num>() : [];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  String? status;
  String? apiVersion;
  String? apiStatus;
  String? lang;
  String? unit;
  num? tzshift;
  String? timezone;
  num? serverTime;
  List<num>? location;
  Result? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['api_version'] = apiVersion;
    map['api_status'] = apiStatus;
    map['lang'] = lang;
    map['unit'] = unit;
    map['tzshift'] = tzshift;
    map['timezone'] = timezone;
    map['server_time'] = serverTime;
    map['location'] = location;
    if (result != null) {
      map['result'] = result?.toJson();
    }
    return map;
  }

}

/// realtime : {"status":"ok","temperature":15.0,"humidity":0.55,"cloudrate":1.0,"skycon":"LIGHT_HAZE","visibility":5.0,"dswrf":227.6,"wind":{"speed":2.02,"direction":200.0},"pressure":101025.16,"apparent_temperature":14.4,"precipitation":{"local":{"status":"ok","datasource":"radar","intensity":0.0},"nearest":{"status":"ok","distance":59.87,"intensity":0.1875}},"air_quality":{"pm25":101,"pm10":154,"o3":38,"so2":4,"no2":62,"co":0.7,"aqi":{"chn":133,"usa":174},"description":{"chn":"轻度污染","usa":"中度污染"}},"life_index":{"ultraviolet":{"index":2.0,"desc":"很弱"},"comfort":{"index":6,"desc":"凉爽"}}}
/// primary : 0

class Result {
  Result({
      this.realtime, 
      this.primary,});

  Result.fromJson(dynamic json) {
    realtime = json['realtime'] != null ? Realtime.fromJson(json['realtime']) : null;
    primary = json['primary'];
  }
  Realtime? realtime;
  num? primary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (realtime != null) {
      map['realtime'] = realtime?.toJson();
    }
    map['primary'] = primary;
    return map;
  }

}

/// status : "ok"
/// temperature : 15.0
/// humidity : 0.55
/// cloudrate : 1.0
/// skycon : "LIGHT_HAZE"
/// visibility : 5.0
/// dswrf : 227.6
/// wind : {"speed":2.02,"direction":200.0}
/// pressure : 101025.16
/// apparent_temperature : 14.4
/// precipitation : {"local":{"status":"ok","datasource":"radar","intensity":0.0},"nearest":{"status":"ok","distance":59.87,"intensity":0.1875}}
/// air_quality : {"pm25":101,"pm10":154,"o3":38,"so2":4,"no2":62,"co":0.7,"aqi":{"chn":133,"usa":174},"description":{"chn":"轻度污染","usa":"中度污染"}}
/// life_index : {"ultraviolet":{"index":2.0,"desc":"很弱"},"comfort":{"index":6,"desc":"凉爽"}}

class Realtime {
  Realtime({
      this.status, 
      this.temperature, 
      this.humidity, 
      this.cloudrate, 
      this.skycon, 
      this.visibility, 
      this.dswrf, 
      this.wind, 
      this.pressure, 
      this.apparentTemperature, 
      this.precipitation, 
      this.airQuality, 
      this.lifeIndex,});

  Realtime.fromJson(dynamic json) {
    status = json['status'];
    temperature = json['temperature'];
    humidity = json['humidity'];
    cloudrate = json['cloudrate'];
    skycon = json['skycon'];
    visibility = json['visibility'];
    dswrf = json['dswrf'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    pressure = json['pressure'];
    apparentTemperature = json['apparent_temperature'];
    precipitation = json['precipitation'] != null ? Precipitation.fromJson(json['precipitation']) : null;
    airQuality = json['air_quality'] != null ? AirQuality.fromJson(json['air_quality']) : null;
    lifeIndex = json['life_index'] != null ? LifeIndex.fromJson(json['life_index']) : null;
  }
  String? status;
  num? temperature;
  num? humidity;
  num? cloudrate;
  String? skycon;
  num? visibility;
  num? dswrf;
  Wind? wind;
  num? pressure;
  num? apparentTemperature;
  Precipitation? precipitation;
  AirQuality? airQuality;
  LifeIndex? lifeIndex;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['temperature'] = temperature;
    map['humidity'] = humidity;
    map['cloudrate'] = cloudrate;
    map['skycon'] = skycon;
    map['visibility'] = visibility;
    map['dswrf'] = dswrf;
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['pressure'] = pressure;
    map['apparent_temperature'] = apparentTemperature;
    if (precipitation != null) {
      map['precipitation'] = precipitation?.toJson();
    }
    if (airQuality != null) {
      map['air_quality'] = airQuality?.toJson();
    }
    if (lifeIndex != null) {
      map['life_index'] = lifeIndex?.toJson();
    }
    return map;
  }

}

/// ultraviolet : {"index":2.0,"desc":"很弱"}
/// comfort : {"index":6,"desc":"凉爽"}

class LifeIndex {
  LifeIndex({
      this.ultraviolet, 
      this.comfort,});

  LifeIndex.fromJson(dynamic json) {
    ultraviolet = json['ultraviolet'] != null ? Ultraviolet.fromJson(json['ultraviolet']) : null;
    comfort = json['comfort'] != null ? Comfort.fromJson(json['comfort']) : null;
  }
  Ultraviolet? ultraviolet;
  Comfort? comfort;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ultraviolet != null) {
      map['ultraviolet'] = ultraviolet?.toJson();
    }
    if (comfort != null) {
      map['comfort'] = comfort?.toJson();
    }
    return map;
  }

}

/// index : 6
/// desc : "凉爽"

class Comfort {
  Comfort({
      this.index, 
      this.desc,});

  Comfort.fromJson(dynamic json) {
    index = json['index'];
    desc = json['desc'];
  }
  num? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// index : 2.0
/// desc : "很弱"

class Ultraviolet {
  Ultraviolet({
      this.index, 
      this.desc,});

  Ultraviolet.fromJson(dynamic json) {
    index = json['index'];
    desc = json['desc'];
  }
  num? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// pm25 : 101
/// pm10 : 154
/// o3 : 38
/// so2 : 4
/// no2 : 62
/// co : 0.7
/// aqi : {"chn":133,"usa":174}
/// description : {"chn":"轻度污染","usa":"中度污染"}

class AirQuality {
  AirQuality({
      this.pm25, 
      this.pm10, 
      this.o3, 
      this.so2, 
      this.no2, 
      this.co, 
      this.aqi, 
      this.description,});

  AirQuality.fromJson(dynamic json) {
    pm25 = json['pm25'];
    pm10 = json['pm10'];
    o3 = json['o3'];
    so2 = json['so2'];
    no2 = json['no2'];
    co = json['co'];
    aqi = json['aqi'] != null ? Aqi.fromJson(json['aqi']) : null;
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
  }
  num? pm25;
  num? pm10;
  num? o3;
  num? so2;
  num? no2;
  num? co;
  Aqi? aqi;
  Description? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pm25'] = pm25;
    map['pm10'] = pm10;
    map['o3'] = o3;
    map['so2'] = so2;
    map['no2'] = no2;
    map['co'] = co;
    if (aqi != null) {
      map['aqi'] = aqi?.toJson();
    }
    if (description != null) {
      map['description'] = description?.toJson();
    }
    return map;
  }

}

/// chn : "轻度污染"
/// usa : "中度污染"

class Description {
  Description({
      this.chn, 
      this.usa,});

  Description.fromJson(dynamic json) {
    chn = json['chn'];
    usa = json['usa'];
  }
  String? chn;
  String? usa;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['chn'] = chn;
    map['usa'] = usa;
    return map;
  }

}

/// chn : 133
/// usa : 174

class Aqi {
  Aqi({
      this.chn, 
      this.usa,});

  Aqi.fromJson(dynamic json) {
    chn = json['chn'];
    usa = json['usa'];
  }
  num? chn;
  num? usa;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['chn'] = chn;
    map['usa'] = usa;
    return map;
  }

}

/// local : {"status":"ok","datasource":"radar","intensity":0.0}
/// nearest : {"status":"ok","distance":59.87,"intensity":0.1875}

class Precipitation {
  Precipitation({
      this.local, 
      this.nearest,});

  Precipitation.fromJson(dynamic json) {
    local = json['local'] != null ? Local.fromJson(json['local']) : null;
    nearest = json['nearest'] != null ? Nearest.fromJson(json['nearest']) : null;
  }
  Local? local;
  Nearest? nearest;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (local != null) {
      map['local'] = local?.toJson();
    }
    if (nearest != null) {
      map['nearest'] = nearest?.toJson();
    }
    return map;
  }

}

/// status : "ok"
/// distance : 59.87
/// intensity : 0.1875

class Nearest {
  Nearest({
      this.status, 
      this.distance, 
      this.intensity,});

  Nearest.fromJson(dynamic json) {
    status = json['status'];
    distance = json['distance'];
    intensity = json['intensity'];
  }
  String? status;
  num? distance;
  num? intensity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['distance'] = distance;
    map['intensity'] = intensity;
    return map;
  }

}

/// status : "ok"
/// datasource : "radar"
/// intensity : 0.0

class Local {
  Local({
      this.status, 
      this.datasource, 
      this.intensity,});

  Local.fromJson(dynamic json) {
    status = json['status'];
    datasource = json['datasource'];
    intensity = json['intensity'];
  }
  String? status;
  String? datasource;
  num? intensity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['datasource'] = datasource;
    map['intensity'] = intensity;
    return map;
  }

}

/// speed : 2.02
/// direction : 200.0

class Wind {
  Wind({
      this.speed, 
      this.direction,});

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
    direction = json['direction'];
  }
  num? speed;
  num? direction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    map['direction'] = direction;
    return map;
  }

}