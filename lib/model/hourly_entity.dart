/// status : "ok"
/// api_version : "v2.6"
/// api_status : "alpha"
/// lang : "zh_CN"
/// unit : "metric"
/// tzshift : 28800
/// timezone : "Asia/Shanghai"
/// server_time : 1666253412
/// location : [39.976,116.3176]
/// result : {"hourly":{"status":"ok","description":"未来24小时多云","precipitation":[{"datetime":"2022-10-20T16:00+08:00","value":0.0,"probability":0}],"temperature":[{"datetime":"2022-10-20T16:00+08:00","value":15.0}],"apparent_temperature":[{"datetime":"2022-10-20T16:00+08:00","value":14.4}],"wind":[{"datetime":"2022-10-20T16:00+08:00","speed":2.02,"direction":200.0}],"humidity":[{"datetime":"2022-10-20T16:00+08:00","value":0.55}],"cloudrate":[{"datetime":"2022-10-20T16:00+08:00","value":1.0}],"skycon":[{"datetime":"2022-10-20T16:00+08:00","value":"LIGHT_HAZE"}],"pressure":[{"datetime":"2022-10-20T16:00+08:00","value":100984.4588078963}],"visibility":[{"datetime":"2022-10-20T16:00+08:00","value":5.0}],"dswrf":[{"datetime":"2022-10-20T16:00+08:00","value":224.9466783004}],"air_quality":{"aqi":[{"datetime":"2022-10-20T16:00+08:00","value":{"chn":119,"usa":168}}],"pm25":[{"datetime":"2022-10-20T16:00+08:00","value":90}]}},"primary":0,"forecast_keypoint":"未来24小时多云"}

class HourlyEntity {
  HourlyEntity({
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

  HourlyEntity.fromJson(dynamic json) {
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

/// hourly : {"status":"ok","description":"未来24小时多云","precipitation":[{"datetime":"2022-10-20T16:00+08:00","value":0.0,"probability":0}],"temperature":[{"datetime":"2022-10-20T16:00+08:00","value":15.0}],"apparent_temperature":[{"datetime":"2022-10-20T16:00+08:00","value":14.4}],"wind":[{"datetime":"2022-10-20T16:00+08:00","speed":2.02,"direction":200.0}],"humidity":[{"datetime":"2022-10-20T16:00+08:00","value":0.55}],"cloudrate":[{"datetime":"2022-10-20T16:00+08:00","value":1.0}],"skycon":[{"datetime":"2022-10-20T16:00+08:00","value":"LIGHT_HAZE"}],"pressure":[{"datetime":"2022-10-20T16:00+08:00","value":100984.4588078963}],"visibility":[{"datetime":"2022-10-20T16:00+08:00","value":5.0}],"dswrf":[{"datetime":"2022-10-20T16:00+08:00","value":224.9466783004}],"air_quality":{"aqi":[{"datetime":"2022-10-20T16:00+08:00","value":{"chn":119,"usa":168}}],"pm25":[{"datetime":"2022-10-20T16:00+08:00","value":90}]}}
/// primary : 0
/// forecast_keypoint : "未来24小时多云"

class Result {
  Result({
      this.hourly, 
      this.primary, 
      this.forecastKeypoint,});

  Result.fromJson(dynamic json) {
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
    primary = json['primary'];
    forecastKeypoint = json['forecast_keypoint'];
  }
  Hourly? hourly;
  num? primary;
  String? forecastKeypoint;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    map['primary'] = primary;
    map['forecast_keypoint'] = forecastKeypoint;
    return map;
  }

}

/// status : "ok"
/// description : "未来24小时多云"
/// precipitation : [{"datetime":"2022-10-20T16:00+08:00","value":0.0,"probability":0}]
/// temperature : [{"datetime":"2022-10-20T16:00+08:00","value":15.0}]
/// apparent_temperature : [{"datetime":"2022-10-20T16:00+08:00","value":14.4}]
/// wind : [{"datetime":"2022-10-20T16:00+08:00","speed":2.02,"direction":200.0}]
/// humidity : [{"datetime":"2022-10-20T16:00+08:00","value":0.55}]
/// cloudrate : [{"datetime":"2022-10-20T16:00+08:00","value":1.0}]
/// skycon : [{"datetime":"2022-10-20T16:00+08:00","value":"LIGHT_HAZE"}]
/// pressure : [{"datetime":"2022-10-20T16:00+08:00","value":100984.4588078963}]
/// visibility : [{"datetime":"2022-10-20T16:00+08:00","value":5.0}]
/// dswrf : [{"datetime":"2022-10-20T16:00+08:00","value":224.9466783004}]
/// air_quality : {"aqi":[{"datetime":"2022-10-20T16:00+08:00","value":{"chn":119,"usa":168}}],"pm25":[{"datetime":"2022-10-20T16:00+08:00","value":90}]}

class Hourly {
  Hourly({
      this.status, 
      this.description, 
      this.precipitation, 
      this.temperature, 
      this.apparentTemperature, 
      this.wind, 
      this.humidity, 
      this.cloudrate, 
      this.skycon, 
      this.pressure, 
      this.visibility, 
      this.dswrf, 
      this.airQuality,});

  Hourly.fromJson(dynamic json) {
    status = json['status'];
    description = json['description'];
    if (json['precipitation'] != null) {
      precipitation = [];
      json['precipitation'].forEach((v) {
        precipitation?.add(Precipitation.fromJson(v));
      });
    }
    if (json['temperature'] != null) {
      temperature = [];
      json['temperature'].forEach((v) {
        temperature?.add(Temperature.fromJson(v));
      });
    }
    if (json['apparent_temperature'] != null) {
      apparentTemperature = [];
      json['apparent_temperature'].forEach((v) {
        apparentTemperature?.add(ApparentTemperature.fromJson(v));
      });
    }
    if (json['wind'] != null) {
      wind = [];
      json['wind'].forEach((v) {
        wind?.add(Wind.fromJson(v));
      });
    }
    if (json['humidity'] != null) {
      humidity = [];
      json['humidity'].forEach((v) {
        humidity?.add(Humidity.fromJson(v));
      });
    }
    if (json['cloudrate'] != null) {
      cloudrate = [];
      json['cloudrate'].forEach((v) {
        cloudrate?.add(Cloudrate.fromJson(v));
      });
    }
    if (json['skycon'] != null) {
      skycon = [];
      json['skycon'].forEach((v) {
        skycon?.add(Skycon.fromJson(v));
      });
    }
    if (json['pressure'] != null) {
      pressure = [];
      json['pressure'].forEach((v) {
        pressure?.add(Pressure.fromJson(v));
      });
    }
    if (json['visibility'] != null) {
      visibility = [];
      json['visibility'].forEach((v) {
        visibility?.add(Visibility.fromJson(v));
      });
    }
    if (json['dswrf'] != null) {
      dswrf = [];
      json['dswrf'].forEach((v) {
        dswrf?.add(Dswrf.fromJson(v));
      });
    }
    airQuality = json['air_quality'] != null ? AirQuality.fromJson(json['air_quality']) : null;
  }
  String? status;
  String? description;
  List<Precipitation>? precipitation;
  List<Temperature>? temperature;
  List<ApparentTemperature>? apparentTemperature;
  List<Wind>? wind;
  List<Humidity>? humidity;
  List<Cloudrate>? cloudrate;
  List<Skycon>? skycon;
  List<Pressure>? pressure;
  List<Visibility>? visibility;
  List<Dswrf>? dswrf;
  AirQuality? airQuality;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['description'] = description;
    if (precipitation != null) {
      map['precipitation'] = precipitation?.map((v) => v.toJson()).toList();
    }
    if (temperature != null) {
      map['temperature'] = temperature?.map((v) => v.toJson()).toList();
    }
    if (apparentTemperature != null) {
      map['apparent_temperature'] = apparentTemperature?.map((v) => v.toJson()).toList();
    }
    if (wind != null) {
      map['wind'] = wind?.map((v) => v.toJson()).toList();
    }
    if (humidity != null) {
      map['humidity'] = humidity?.map((v) => v.toJson()).toList();
    }
    if (cloudrate != null) {
      map['cloudrate'] = cloudrate?.map((v) => v.toJson()).toList();
    }
    if (skycon != null) {
      map['skycon'] = skycon?.map((v) => v.toJson()).toList();
    }
    if (pressure != null) {
      map['pressure'] = pressure?.map((v) => v.toJson()).toList();
    }
    if (visibility != null) {
      map['visibility'] = visibility?.map((v) => v.toJson()).toList();
    }
    if (dswrf != null) {
      map['dswrf'] = dswrf?.map((v) => v.toJson()).toList();
    }
    if (airQuality != null) {
      map['air_quality'] = airQuality?.toJson();
    }
    return map;
  }

}

/// aqi : [{"datetime":"2022-10-20T16:00+08:00","value":{"chn":119,"usa":168}}]
/// pm25 : [{"datetime":"2022-10-20T16:00+08:00","value":90}]

class AirQuality {
  AirQuality({
      this.aqi, 
      this.pm25,});

  AirQuality.fromJson(dynamic json) {
    if (json['aqi'] != null) {
      aqi = [];
      json['aqi'].forEach((v) {
        aqi?.add(Aqi.fromJson(v));
      });
    }
    if (json['pm25'] != null) {
      pm25 = [];
      json['pm25'].forEach((v) {
        pm25?.add(Pm25.fromJson(v));
      });
    }
  }
  List<Aqi>? aqi;
  List<Pm25>? pm25;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (aqi != null) {
      map['aqi'] = aqi?.map((v) => v.toJson()).toList();
    }
    if (pm25 != null) {
      map['pm25'] = pm25?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 90

class Pm25 {
  Pm25({
      this.datetime, 
      this.value,});

  Pm25.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : {"chn":119,"usa":168}

class Aqi {
  Aqi({
      this.datetime, 
      this.value,});

  Aqi.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'] != null ? Value.fromJson(json['value']) : null;
  }
  String? datetime;
  Value? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    if (value != null) {
      map['value'] = value?.toJson();
    }
    return map;
  }

}

/// chn : 119
/// usa : 168

class Value {
  Value({
      this.chn, 
      this.usa,});

  Value.fromJson(dynamic json) {
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

/// datetime : "2022-10-20T16:00+08:00"
/// value : 224.9466783004

class Dswrf {
  Dswrf({
      this.datetime, 
      this.value,});

  Dswrf.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 5.0

class Visibility {
  Visibility({
      this.datetime, 
      this.value,});

  Visibility.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 100984.4588078963

class Pressure {
  Pressure({
      this.datetime, 
      this.value,});

  Pressure.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : "LIGHT_HAZE"

class Skycon {
  Skycon({
      this.datetime, 
      this.value,});

  Skycon.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 1.0

class Cloudrate {
  Cloudrate({
      this.datetime, 
      this.value,});

  Cloudrate.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 0.55

class Humidity {
  Humidity({
      this.datetime, 
      this.value,});

  Humidity.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// speed : 2.02
/// direction : 200.0

class Wind {
  Wind({
      this.datetime, 
      this.speed, 
      this.direction,});

  Wind.fromJson(dynamic json) {
    datetime = json['datetime'];
    speed = json['speed'];
    direction = json['direction'];
  }
  String? datetime;
  num? speed;
  num? direction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['speed'] = speed;
    map['direction'] = direction;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 14.4

class ApparentTemperature {
  ApparentTemperature({
      this.datetime, 
      this.value,});

  ApparentTemperature.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 15.0

class Temperature {
  Temperature({
      this.datetime, 
      this.value,});

  Temperature.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
  }
  String? datetime;
  num? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    return map;
  }

}

/// datetime : "2022-10-20T16:00+08:00"
/// value : 0.0
/// probability : 0

class Precipitation {
  Precipitation({
      this.datetime, 
      this.value, 
      this.probability,});

  Precipitation.fromJson(dynamic json) {
    datetime = json['datetime'];
    value = json['value'];
    probability = json['probability'];
  }
  String? datetime;
  num? value;
  num? probability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['datetime'] = datetime;
    map['value'] = value;
    map['probability'] = probability;
    return map;
  }

}