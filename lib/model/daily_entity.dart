/// status : "ok"
/// api_version : "v2.6"
/// api_status : "alpha"
/// lang : "zh_CN"
/// unit : "metric"
/// tzshift : 28800
/// timezone : "Asia/Shanghai"
/// server_time : 1666253534
/// location : [39.976,116.3176]
/// result : {"daily":{"status":"ok","astro":[{"date":"2022-10-20T00:00+08:00","sunrise":{"time":"06:30"},"sunset":{"time":"17:29"}}],"precipitation_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"precipitation_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"precipitation":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"temperature":[{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":11.62}],"temperature_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":12.92}],"temperature_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":11.9,"min":7.0,"avg":8.3}],"wind":[{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":0.74,"direction":299.52},"avg":{"speed":5.18,"direction":192.03}}],"wind_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":1.75,"direction":161.34},"avg":{"speed":5.43,"direction":188.83}}],"wind_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":{"speed":5.27,"direction":10.53},"min":{"speed":1.81,"direction":254.9},"avg":{"speed":3.46,"direction":297.81}}],"humidity":[{"date":"2022-10-20T00:00+08:00","max":0.55,"min":0.22,"avg":0.31}],"cloudrate":[{"date":"2022-10-20T00:00+08:00","max":1.0,"min":0.81,"avg":0.96}],"pressure":[{"date":"2022-10-20T00:00+08:00","max":101349.44,"min":100949.44,"avg":101019.47}],"visibility":[{"date":"2022-10-20T00:00+08:00","max":24.13,"min":5.0,"avg":5.58}],"dswrf":[{"date":"2022-10-20T00:00+08:00","max":409.8,"min":0.0,"avg":89.4}],"air_quality":{"aqi":[{"date":"2022-10-20T00:00+08:00","max":{"chn":126,"usa":171},"avg":{"chn":111,"usa":165},"min":{"chn":74,"usa":146}}],"pm25":[{"date":"2022-10-20T00:00+08:00","max":96,"avg":84,"min":54}]},"skycon":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"skycon_08h_20h":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"skycon_20h_32h":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"life_index":{"ultraviolet":[{"date":"2022-10-20T00:00+08:00","index":"1","desc":"最弱"}],"carWashing":[{"date":"2022-10-20T00:00+08:00","index":"2","desc":"较适宜"}],"dressing":[{"date":"2022-10-20T00:00+08:00","index":"5","desc":"凉爽"}],"comfort":[{"date":"2022-10-20T00:00+08:00","index":"8","desc":"很冷"}],"coldRisk":[{"date":"2022-10-20T00:00+08:00","index":"4","desc":"极易发"}]}},"primary":0}

class DailyEntity {
  DailyEntity({
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

  DailyEntity.fromJson(dynamic json) {
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

/// daily : {"status":"ok","astro":[{"date":"2022-10-20T00:00+08:00","sunrise":{"time":"06:30"},"sunset":{"time":"17:29"}}],"precipitation_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"precipitation_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"precipitation":[{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}],"temperature":[{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":11.62}],"temperature_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":12.92}],"temperature_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":11.9,"min":7.0,"avg":8.3}],"wind":[{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":0.74,"direction":299.52},"avg":{"speed":5.18,"direction":192.03}}],"wind_08h_20h":[{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":1.75,"direction":161.34},"avg":{"speed":5.43,"direction":188.83}}],"wind_20h_32h":[{"date":"2022-10-20T00:00+08:00","max":{"speed":5.27,"direction":10.53},"min":{"speed":1.81,"direction":254.9},"avg":{"speed":3.46,"direction":297.81}}],"humidity":[{"date":"2022-10-20T00:00+08:00","max":0.55,"min":0.22,"avg":0.31}],"cloudrate":[{"date":"2022-10-20T00:00+08:00","max":1.0,"min":0.81,"avg":0.96}],"pressure":[{"date":"2022-10-20T00:00+08:00","max":101349.44,"min":100949.44,"avg":101019.47}],"visibility":[{"date":"2022-10-20T00:00+08:00","max":24.13,"min":5.0,"avg":5.58}],"dswrf":[{"date":"2022-10-20T00:00+08:00","max":409.8,"min":0.0,"avg":89.4}],"air_quality":{"aqi":[{"date":"2022-10-20T00:00+08:00","max":{"chn":126,"usa":171},"avg":{"chn":111,"usa":165},"min":{"chn":74,"usa":146}}],"pm25":[{"date":"2022-10-20T00:00+08:00","max":96,"avg":84,"min":54}]},"skycon":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"skycon_08h_20h":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"skycon_20h_32h":[{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}],"life_index":{"ultraviolet":[{"date":"2022-10-20T00:00+08:00","index":"1","desc":"最弱"}],"carWashing":[{"date":"2022-10-20T00:00+08:00","index":"2","desc":"较适宜"}],"dressing":[{"date":"2022-10-20T00:00+08:00","index":"5","desc":"凉爽"}],"comfort":[{"date":"2022-10-20T00:00+08:00","index":"8","desc":"很冷"}],"coldRisk":[{"date":"2022-10-20T00:00+08:00","index":"4","desc":"极易发"}]}}
/// primary : 0

class Result {
  Result({
      this.daily, 
      this.primary,});

  Result.fromJson(dynamic json) {
    daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
    primary = json['primary'];
  }
  Daily? daily;
  num? primary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (daily != null) {
      map['daily'] = daily?.toJson();
    }
    map['primary'] = primary;
    return map;
  }

}

/// status : "ok"
/// astro : [{"date":"2022-10-20T00:00+08:00","sunrise":{"time":"06:30"},"sunset":{"time":"17:29"}}]
/// precipitation_08h_20h : [{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}]
/// precipitation_20h_32h : [{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}]
/// precipitation : [{"date":"2022-10-20T00:00+08:00","max":0.0,"min":0.0,"avg":0.0,"probability":0}]
/// temperature : [{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":11.62}]
/// temperature_08h_20h : [{"date":"2022-10-20T00:00+08:00","max":16.33,"min":6.0,"avg":12.92}]
/// temperature_20h_32h : [{"date":"2022-10-20T00:00+08:00","max":11.9,"min":7.0,"avg":8.3}]
/// wind : [{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":0.74,"direction":299.52},"avg":{"speed":5.18,"direction":192.03}}]
/// wind_08h_20h : [{"date":"2022-10-20T00:00+08:00","max":{"speed":14.8,"direction":190.44},"min":{"speed":1.75,"direction":161.34},"avg":{"speed":5.43,"direction":188.83}}]
/// wind_20h_32h : [{"date":"2022-10-20T00:00+08:00","max":{"speed":5.27,"direction":10.53},"min":{"speed":1.81,"direction":254.9},"avg":{"speed":3.46,"direction":297.81}}]
/// humidity : [{"date":"2022-10-20T00:00+08:00","max":0.55,"min":0.22,"avg":0.31}]
/// cloudrate : [{"date":"2022-10-20T00:00+08:00","max":1.0,"min":0.81,"avg":0.96}]
/// pressure : [{"date":"2022-10-20T00:00+08:00","max":101349.44,"min":100949.44,"avg":101019.47}]
/// visibility : [{"date":"2022-10-20T00:00+08:00","max":24.13,"min":5.0,"avg":5.58}]
/// dswrf : [{"date":"2022-10-20T00:00+08:00","max":409.8,"min":0.0,"avg":89.4}]
/// air_quality : {"aqi":[{"date":"2022-10-20T00:00+08:00","max":{"chn":126,"usa":171},"avg":{"chn":111,"usa":165},"min":{"chn":74,"usa":146}}],"pm25":[{"date":"2022-10-20T00:00+08:00","max":96,"avg":84,"min":54}]}
/// skycon : [{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}]
/// skycon_08h_20h : [{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}]
/// skycon_20h_32h : [{"date":"2022-10-20T00:00+08:00","value":"LIGHT_HAZE"}]
/// life_index : {"ultraviolet":[{"date":"2022-10-20T00:00+08:00","index":"1","desc":"最弱"}],"carWashing":[{"date":"2022-10-20T00:00+08:00","index":"2","desc":"较适宜"}],"dressing":[{"date":"2022-10-20T00:00+08:00","index":"5","desc":"凉爽"}],"comfort":[{"date":"2022-10-20T00:00+08:00","index":"8","desc":"很冷"}],"coldRisk":[{"date":"2022-10-20T00:00+08:00","index":"4","desc":"极易发"}]}

class Daily {
  Daily({
      this.status, 
      this.astro, 
      this.precipitation08h20h, 
      this.precipitation20h32h, 
      this.precipitation, 
      this.temperature, 
      this.temperature08h20h, 
      this.temperature20h32h, 
      this.wind, 
      this.wind08h20h, 
      this.wind20h32h, 
      this.humidity, 
      this.cloudrate, 
      this.pressure, 
      this.visibility, 
      this.dswrf, 
      this.airQuality, 
      this.skycon, 
      this.skycon08h20h, 
      this.skycon20h32h, 
      this.lifeIndex,});

  Daily.fromJson(dynamic json) {
    status = json['status'];
    if (json['astro'] != null) {
      astro = [];
      json['astro'].forEach((v) {
        astro?.add(Astro.fromJson(v));
      });
    }
    if (json['precipitation_08h_20h'] != null) {
      precipitation08h20h = [];
      json['precipitation_08h_20h'].forEach((v) {
        precipitation08h20h?.add(Precipitation08h20h.fromJson(v));
      });
    }
    if (json['precipitation_20h_32h'] != null) {
      precipitation20h32h = [];
      json['precipitation_20h_32h'].forEach((v) {
        precipitation20h32h?.add(Precipitation20h32h.fromJson(v));
      });
    }
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
    if (json['temperature_08h_20h'] != null) {
      temperature08h20h = [];
      json['temperature_08h_20h'].forEach((v) {
        temperature08h20h?.add(Temperature08h20h.fromJson(v));
      });
    }
    if (json['temperature_20h_32h'] != null) {
      temperature20h32h = [];
      json['temperature_20h_32h'].forEach((v) {
        temperature20h32h?.add(Temperature20h32h.fromJson(v));
      });
    }
    if (json['wind'] != null) {
      wind = [];
      json['wind'].forEach((v) {
        wind?.add(Wind.fromJson(v));
      });
    }
    if (json['wind_08h_20h'] != null) {
      wind08h20h = [];
      json['wind_08h_20h'].forEach((v) {
        wind08h20h?.add(Wind08h20h.fromJson(v));
      });
    }
    if (json['wind_20h_32h'] != null) {
      wind20h32h = [];
      json['wind_20h_32h'].forEach((v) {
        wind20h32h?.add(Wind20h32h.fromJson(v));
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
    if (json['skycon'] != null) {
      skycon = [];
      json['skycon'].forEach((v) {
        skycon?.add(Skycon.fromJson(v));
      });
    }
    if (json['skycon_08h_20h'] != null) {
      skycon08h20h = [];
      json['skycon_08h_20h'].forEach((v) {
        skycon08h20h?.add(Skycon08h20h.fromJson(v));
      });
    }
    if (json['skycon_20h_32h'] != null) {
      skycon20h32h = [];
      json['skycon_20h_32h'].forEach((v) {
        skycon20h32h?.add(Skycon20h32h.fromJson(v));
      });
    }
    lifeIndex = json['life_index'] != null ? LifeIndex.fromJson(json['life_index']) : null;
  }
  String? status;
  List<Astro>? astro;
  List<Precipitation08h20h>? precipitation08h20h;
  List<Precipitation20h32h>? precipitation20h32h;
  List<Precipitation>? precipitation;
  List<Temperature>? temperature;
  List<Temperature08h20h>? temperature08h20h;
  List<Temperature20h32h>? temperature20h32h;
  List<Wind>? wind;
  List<Wind08h20h>? wind08h20h;
  List<Wind20h32h>? wind20h32h;
  List<Humidity>? humidity;
  List<Cloudrate>? cloudrate;
  List<Pressure>? pressure;
  List<Visibility>? visibility;
  List<Dswrf>? dswrf;
  AirQuality? airQuality;
  List<Skycon>? skycon;
  List<Skycon08h20h>? skycon08h20h;
  List<Skycon20h32h>? skycon20h32h;
  LifeIndex? lifeIndex;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (astro != null) {
      map['astro'] = astro?.map((v) => v.toJson()).toList();
    }
    if (precipitation08h20h != null) {
      map['precipitation_08h_20h'] = precipitation08h20h?.map((v) => v.toJson()).toList();
    }
    if (precipitation20h32h != null) {
      map['precipitation_20h_32h'] = precipitation20h32h?.map((v) => v.toJson()).toList();
    }
    if (precipitation != null) {
      map['precipitation'] = precipitation?.map((v) => v.toJson()).toList();
    }
    if (temperature != null) {
      map['temperature'] = temperature?.map((v) => v.toJson()).toList();
    }
    if (temperature08h20h != null) {
      map['temperature_08h_20h'] = temperature08h20h?.map((v) => v.toJson()).toList();
    }
    if (temperature20h32h != null) {
      map['temperature_20h_32h'] = temperature20h32h?.map((v) => v.toJson()).toList();
    }
    if (wind != null) {
      map['wind'] = wind?.map((v) => v.toJson()).toList();
    }
    if (wind08h20h != null) {
      map['wind_08h_20h'] = wind08h20h?.map((v) => v.toJson()).toList();
    }
    if (wind20h32h != null) {
      map['wind_20h_32h'] = wind20h32h?.map((v) => v.toJson()).toList();
    }
    if (humidity != null) {
      map['humidity'] = humidity?.map((v) => v.toJson()).toList();
    }
    if (cloudrate != null) {
      map['cloudrate'] = cloudrate?.map((v) => v.toJson()).toList();
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
    if (skycon != null) {
      map['skycon'] = skycon?.map((v) => v.toJson()).toList();
    }
    if (skycon08h20h != null) {
      map['skycon_08h_20h'] = skycon08h20h?.map((v) => v.toJson()).toList();
    }
    if (skycon20h32h != null) {
      map['skycon_20h_32h'] = skycon20h32h?.map((v) => v.toJson()).toList();
    }
    if (lifeIndex != null) {
      map['life_index'] = lifeIndex?.toJson();
    }
    return map;
  }

}

/// ultraviolet : [{"date":"2022-10-20T00:00+08:00","index":"1","desc":"最弱"}]
/// carWashing : [{"date":"2022-10-20T00:00+08:00","index":"2","desc":"较适宜"}]
/// dressing : [{"date":"2022-10-20T00:00+08:00","index":"5","desc":"凉爽"}]
/// comfort : [{"date":"2022-10-20T00:00+08:00","index":"8","desc":"很冷"}]
/// coldRisk : [{"date":"2022-10-20T00:00+08:00","index":"4","desc":"极易发"}]

class LifeIndex {
  LifeIndex({
      this.ultraviolet, 
      this.carWashing, 
      this.dressing, 
      this.comfort, 
      this.coldRisk,});

  LifeIndex.fromJson(dynamic json) {
    if (json['ultraviolet'] != null) {
      ultraviolet = [];
      json['ultraviolet'].forEach((v) {
        ultraviolet?.add(Ultraviolet.fromJson(v));
      });
    }
    if (json['carWashing'] != null) {
      carWashing = [];
      json['carWashing'].forEach((v) {
        carWashing?.add(CarWashing.fromJson(v));
      });
    }
    if (json['dressing'] != null) {
      dressing = [];
      json['dressing'].forEach((v) {
        dressing?.add(Dressing.fromJson(v));
      });
    }
    if (json['comfort'] != null) {
      comfort = [];
      json['comfort'].forEach((v) {
        comfort?.add(Comfort.fromJson(v));
      });
    }
    if (json['coldRisk'] != null) {
      coldRisk = [];
      json['coldRisk'].forEach((v) {
        coldRisk?.add(ColdRisk.fromJson(v));
      });
    }
  }
  List<Ultraviolet>? ultraviolet;
  List<CarWashing>? carWashing;
  List<Dressing>? dressing;
  List<Comfort>? comfort;
  List<ColdRisk>? coldRisk;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (ultraviolet != null) {
      map['ultraviolet'] = ultraviolet?.map((v) => v.toJson()).toList();
    }
    if (carWashing != null) {
      map['carWashing'] = carWashing?.map((v) => v.toJson()).toList();
    }
    if (dressing != null) {
      map['dressing'] = dressing?.map((v) => v.toJson()).toList();
    }
    if (comfort != null) {
      map['comfort'] = comfort?.map((v) => v.toJson()).toList();
    }
    if (coldRisk != null) {
      map['coldRisk'] = coldRisk?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// index : "4"
/// desc : "极易发"

class ColdRisk {
  ColdRisk({
      this.date, 
      this.index, 
      this.desc,});

  ColdRisk.fromJson(dynamic json) {
    date = json['date'];
    index = json['index'];
    desc = json['desc'];
  }
  String? date;
  String? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// index : "8"
/// desc : "很冷"

class Comfort {
  Comfort({
      this.date, 
      this.index, 
      this.desc,});

  Comfort.fromJson(dynamic json) {
    date = json['date'];
    index = json['index'];
    desc = json['desc'];
  }
  String? date;
  String? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// index : "5"
/// desc : "凉爽"

class Dressing {
  Dressing({
      this.date, 
      this.index, 
      this.desc,});

  Dressing.fromJson(dynamic json) {
    date = json['date'];
    index = json['index'];
    desc = json['desc'];
  }
  String? date;
  String? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// index : "2"
/// desc : "较适宜"

class CarWashing {
  CarWashing({
      this.date, 
      this.index, 
      this.desc,});

  CarWashing.fromJson(dynamic json) {
    date = json['date'];
    index = json['index'];
    desc = json['desc'];
  }
  String? date;
  String? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// index : "1"
/// desc : "最弱"

class Ultraviolet {
  Ultraviolet({
      this.date, 
      this.index, 
      this.desc,});

  Ultraviolet.fromJson(dynamic json) {
    date = json['date'];
    index = json['index'];
    desc = json['desc'];
  }
  String? date;
  String? index;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['index'] = index;
    map['desc'] = desc;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// value : "LIGHT_HAZE"

class Skycon20h32h {
  Skycon20h32h({
      this.date, 
      this.value,});

  Skycon20h32h.fromJson(dynamic json) {
    date = json['date'];
    value = json['value'];
  }
  String? date;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['value'] = value;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// value : "LIGHT_HAZE"

class Skycon08h20h {
  Skycon08h20h({
      this.date, 
      this.value,});

  Skycon08h20h.fromJson(dynamic json) {
    date = json['date'];
    value = json['value'];
  }
  String? date;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['value'] = value;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// value : "LIGHT_HAZE"

class Skycon {
  Skycon({
      this.date, 
      this.value,});

  Skycon.fromJson(dynamic json) {
    date = json['date'];
    value = json['value'];
  }
  String? date;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['value'] = value;
    return map;
  }

}

/// aqi : [{"date":"2022-10-20T00:00+08:00","max":{"chn":126,"usa":171},"avg":{"chn":111,"usa":165},"min":{"chn":74,"usa":146}}]
/// pm25 : [{"date":"2022-10-20T00:00+08:00","max":96,"avg":84,"min":54}]

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

/// date : "2022-10-20T00:00+08:00"
/// max : 96
/// avg : 84
/// min : 54

class Pm25 {
  Pm25({
      this.date, 
      this.max, 
      this.avg, 
      this.min,});

  Pm25.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    avg = json['avg'];
    min = json['min'];
  }
  String? date;
  num? max;
  num? avg;
  num? min;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['avg'] = avg;
    map['min'] = min;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : {"chn":126,"usa":171}
/// avg : {"chn":111,"usa":165}
/// min : {"chn":74,"usa":146}

class Aqi {
  Aqi({
      this.date, 
      this.max, 
      this.avg, 
      this.min,});

  Aqi.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
    avg = json['avg'] != null ? Avg.fromJson(json['avg']) : null;
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
  }
  String? date;
  Max? max;
  Avg? avg;
  Min? min;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (max != null) {
      map['max'] = max?.toJson();
    }
    if (avg != null) {
      map['avg'] = avg?.toJson();
    }
    if (min != null) {
      map['min'] = min?.toJson();
    }
    return map;
  }

}

/// chn : 74
/// usa : 146

class Min {
  Min({
      this.chn, 
      this.usa,});

  Min.fromJson(dynamic json) {
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

/// chn : 111
/// usa : 165

class Avg {
  Avg({
      this.chn, 
      this.usa,});

  Avg.fromJson(dynamic json) {
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

/// chn : 126
/// usa : 171

class Max {
  Max({
      this.chn, 
      this.usa,});

  Max.fromJson(dynamic json) {
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

/// date : "2022-10-20T00:00+08:00"
/// max : 409.8
/// min : 0.0
/// avg : 89.4

class Dswrf {
  Dswrf({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Dswrf.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 24.13
/// min : 5.0
/// avg : 5.58

class Visibility {
  Visibility({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Visibility.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 101349.44
/// min : 100949.44
/// avg : 101019.47

class Pressure {
  Pressure({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Pressure.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 1.0
/// min : 0.81
/// avg : 0.96

class Cloudrate {
  Cloudrate({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Cloudrate.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 0.55
/// min : 0.22
/// avg : 0.31

class Humidity {
  Humidity({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Humidity.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : {"speed":5.27,"direction":10.53}
/// min : {"speed":1.81,"direction":254.9}
/// avg : {"speed":3.46,"direction":297.81}

class Wind20h32h {
  Wind20h32h({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Wind20h32h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
    avg = json['avg'] != null ? Avg.fromJson(json['avg']) : null;
  }
  String? date;
  Max? max;
  Min? min;
  Avg? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (max != null) {
      map['max'] = max?.toJson();
    }
    if (min != null) {
      map['min'] = min?.toJson();
    }
    if (avg != null) {
      map['avg'] = avg?.toJson();
    }
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : {"speed":14.8,"direction":190.44}
/// min : {"speed":1.75,"direction":161.34}
/// avg : {"speed":5.43,"direction":188.83}

class Wind08h20h {
  Wind08h20h({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Wind08h20h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
    avg = json['avg'] != null ? Avg.fromJson(json['avg']) : null;
  }
  String? date;
  Max? max;
  Min? min;
  Avg? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (max != null) {
      map['max'] = max?.toJson();
    }
    if (min != null) {
      map['min'] = min?.toJson();
    }
    if (avg != null) {
      map['avg'] = avg?.toJson();
    }
    return map;
  }

}


/// date : "2022-10-20T00:00+08:00"
/// max : {"speed":14.8,"direction":190.44}
/// min : {"speed":0.74,"direction":299.52}
/// avg : {"speed":5.18,"direction":192.03}

class Wind {
  Wind({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Wind.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
    avg = json['avg'] != null ? Avg.fromJson(json['avg']) : null;
  }
  String? date;
  Max? max;
  Min? min;
  Avg? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (max != null) {
      map['max'] = max?.toJson();
    }
    if (min != null) {
      map['min'] = min?.toJson();
    }
    if (avg != null) {
      map['avg'] = avg?.toJson();
    }
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 11.9
/// min : 7.0
/// avg : 8.3

class Temperature20h32h {
  Temperature20h32h({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Temperature20h32h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 16.33
/// min : 6.0
/// avg : 12.92

class Temperature08h20h {
  Temperature08h20h({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Temperature08h20h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 16.33
/// min : 6.0
/// avg : 11.62

class Temperature {
  Temperature({
      this.date, 
      this.max, 
      this.min, 
      this.avg,});

  Temperature.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 0.0
/// min : 0.0
/// avg : 0.0
/// probability : 0

class Precipitation {
  Precipitation({
      this.date, 
      this.max, 
      this.min, 
      this.avg, 
      this.probability,});

  Precipitation.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
    probability = json['probability'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;
  num? probability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    map['probability'] = probability;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 0.0
/// min : 0.0
/// avg : 0.0
/// probability : 0

class Precipitation20h32h {
  Precipitation20h32h({
      this.date, 
      this.max, 
      this.min, 
      this.avg, 
      this.probability,});

  Precipitation20h32h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
    probability = json['probability'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;
  num? probability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    map['probability'] = probability;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// max : 0.0
/// min : 0.0
/// avg : 0.0
/// probability : 0

class Precipitation08h20h {
  Precipitation08h20h({
      this.date, 
      this.max, 
      this.min, 
      this.avg, 
      this.probability,});

  Precipitation08h20h.fromJson(dynamic json) {
    date = json['date'];
    max = json['max'];
    min = json['min'];
    avg = json['avg'];
    probability = json['probability'];
  }
  String? date;
  num? max;
  num? min;
  num? avg;
  num? probability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['max'] = max;
    map['min'] = min;
    map['avg'] = avg;
    map['probability'] = probability;
    return map;
  }

}

/// date : "2022-10-20T00:00+08:00"
/// sunrise : {"time":"06:30"}
/// sunset : {"time":"17:29"}

class Astro {
  Astro({
      this.date, 
      this.sunrise, 
      this.sunset,});

  Astro.fromJson(dynamic json) {
    date = json['date'];
    sunrise = json['sunrise'] != null ? Sunrise.fromJson(json['sunrise']) : null;
    sunset = json['sunset'] != null ? Sunset.fromJson(json['sunset']) : null;
  }
  String? date;
  Sunrise? sunrise;
  Sunset? sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (sunrise != null) {
      map['sunrise'] = sunrise?.toJson();
    }
    if (sunset != null) {
      map['sunset'] = sunset?.toJson();
    }
    return map;
  }

}

/// time : "17:29"

class Sunset {
  Sunset({
      this.time,});

  Sunset.fromJson(dynamic json) {
    time = json['time'];
  }
  String? time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    return map;
  }

}

/// time : "06:30"

class Sunrise {
  Sunrise({
      this.time,});

  Sunrise.fromJson(dynamic json) {
    time = json['time'];
  }
  String? time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    return map;
  }

}