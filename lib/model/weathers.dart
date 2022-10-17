class Weathers {
  Weathers({
    this.status,
    this.apiVersion,
    this.apiStatus,
    this.lang,
    this.unit,
    this.tzshift,
    this.timezone,
    this.serverTime,
    this.location,
    this.result,
  });

  Weathers.fromJson(dynamic json) {
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

class Result {
  Result({
    this.alert,
    this.realtime,
    this.minutely,
    this.hourly,
    this.daily,
    this.primary,
    this.forecastKeypoint,
  });

  Result.fromJson(dynamic json) {
    alert = json['alert'] != null ? Alert.fromJson(json['alert']) : null;
    realtime =
        json['realtime'] != null ? Realtime.fromJson(json['realtime']) : null;
    minutely =
        json['minutely'] != null ? Minutely.fromJson(json['minutely']) : null;
    hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
    daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
    primary = json['primary'];
    forecastKeypoint = json['forecast_keypoint'];
  }

  Alert? alert;
  Realtime? realtime;
  Minutely? minutely;
  Hourly? hourly;
  Daily? daily;
  num? primary;
  String? forecastKeypoint;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (alert != null) {
      map['alert'] = alert?.toJson();
    }
    if (realtime != null) {
      map['realtime'] = realtime?.toJson();
    }
    if (minutely != null) {
      map['minutely'] = minutely?.toJson();
    }
    if (hourly != null) {
      map['hourly'] = hourly?.toJson();
    }
    if (daily != null) {
      map['daily'] = daily?.toJson();
    }
    map['primary'] = primary;
    map['forecast_keypoint'] = forecastKeypoint;
    return map;
  }
}

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
    this.lifeIndex,
  });

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
    airQuality = json['air_quality'] != null
        ? AirQuality.fromJson(json['air_quality'])
        : null;
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
    lifeIndex = json['life_index'] != null
        ? LifeIndex.fromJson(json['life_index'])
        : null;
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
      map['precipitation_08h_20h'] =
          precipitation08h20h?.map((v) => v.toJson()).toList();
    }
    if (precipitation20h32h != null) {
      map['precipitation_20h_32h'] =
          precipitation20h32h?.map((v) => v.toJson()).toList();
    }
    if (precipitation != null) {
      map['precipitation'] = precipitation?.map((v) => v.toJson()).toList();
    }
    if (temperature != null) {
      map['temperature'] = temperature?.map((v) => v.toJson()).toList();
    }
    if (temperature08h20h != null) {
      map['temperature_08h_20h'] =
          temperature08h20h?.map((v) => v.toJson()).toList();
    }
    if (temperature20h32h != null) {
      map['temperature_20h_32h'] =
          temperature20h32h?.map((v) => v.toJson()).toList();
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

class LifeIndex {
  LifeIndex({
    this.ultraviolet,
    this.carWashing,
    this.dressing,
    this.comfort,
    this.coldRisk,
  });

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

class ColdRisk {
  ColdRisk({
    this.date,
    this.index,
    this.desc,
  });

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

class Comfort {
  Comfort({
    this.date,
    this.index,
    this.desc,
  });

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

class Dressing {
  Dressing({
    this.date,
    this.index,
    this.desc,
  });

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

class CarWashing {
  CarWashing({
    this.date,
    this.index,
    this.desc,
  });

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

class Ultraviolet {
  Ultraviolet({
    this.date,
    this.index,
    this.desc,
  });

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

class Skycon20h32h {
  Skycon20h32h({
    this.date,
    this.value,
  });

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

class Skycon08h20h {
  Skycon08h20h({
    this.date,
    this.value,
  });

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

class Skycon {
  Skycon({
    this.date,
    this.value,
  });

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

class AirQuality {
  AirQuality({
    this.aqi,
    this.pm25,
  });

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

class Pm25 {
  Pm25({
    this.date,
    this.max,
    this.avg,
    this.min,
  });

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

class Aqi {
  Aqi({
    this.date,
    this.max,
    this.avg,
    this.min,
  });

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

class Min {
  Min({
    this.chn,
    this.usa,
  });

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

class Avg {
  Avg({
    this.chn,
    this.usa,
  });

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

class Max {
  Max({
    this.chn,
    this.usa,
  });

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

class Dswrf {
  Dswrf({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Visibility {
  Visibility({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Pressure {
  Pressure({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Cloudrate {
  Cloudrate({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Humidity {
  Humidity({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Wind20h32h {
  Wind20h32h({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Wind08h20h {
  Wind08h20h({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Wind {
  Wind({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Temperature20h32h {
  Temperature20h32h({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Temperature08h20h {
  Temperature08h20h({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Temperature {
  Temperature({
    this.date,
    this.max,
    this.min,
    this.avg,
  });

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

class Precipitation {
  Precipitation({
    this.date,
    this.max,
    this.min,
    this.avg,
    this.probability,
  });

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

class Precipitation20h32h {
  Precipitation20h32h({
    this.date,
    this.max,
    this.min,
    this.avg,
    this.probability,
  });

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

class Precipitation08h20h {
  Precipitation08h20h({
    this.date,
    this.max,
    this.min,
    this.avg,
    this.probability,
  });

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

class Astro {
  Astro({
    this.date,
    this.sunrise,
    this.sunset,
  });

  Astro.fromJson(dynamic json) {
    date = json['date'];
    sunrise =
        json['sunrise'] != null ? Sunrise.fromJson(json['sunrise']) : null;
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

class Sunset {
  Sunset({
    this.time,
  });

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

class Sunrise {
  Sunrise({
    this.time,
  });

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
    this.airQuality,
  });

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
    airQuality = json['air_quality'] != null
        ? AirQuality.fromJson(json['air_quality'])
        : null;
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
      map['apparent_temperature'] =
          apparentTemperature?.map((v) => v.toJson()).toList();
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

class Value {
  Value({
    this.chn,
    this.usa,
  });

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

class ApparentTemperature {
  ApparentTemperature({
    this.datetime,
    this.value,
  });

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

class Minutely {
  Minutely({
    this.status,
    this.datasource,
    this.precipitation2h,
    this.precipitation,
    this.probability,
    this.description,
  });

  Minutely.fromJson(dynamic json) {
    status = json['status'];
    datasource = json['datasource'];
    precipitation2h = json['precipitation_2h'] != null
        ? json['precipitation_2h'].cast<num>()
        : [];
    precipitation =
        json['precipitation'] != null ? json['precipitation'].cast<num>() : [];
    probability =
        json['probability'] != null ? json['probability'].cast<num>() : [];
    description = json['description'];
  }

  String? status;
  String? datasource;
  List<num>? precipitation2h;
  List<num>? precipitation;
  List<num>? probability;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['datasource'] = datasource;
    map['precipitation_2h'] = precipitation2h;
    map['precipitation'] = precipitation;
    map['probability'] = probability;
    map['description'] = description;
    return map;
  }
}

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
    this.lifeIndex,
  });

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
    precipitation = json['precipitation'] != null
        ? Precipitation.fromJson(json['precipitation'])
        : null;
    airQuality = json['air_quality'] != null
        ? AirQuality.fromJson(json['air_quality'])
        : null;
    lifeIndex = json['life_index'] != null
        ? LifeIndex.fromJson(json['life_index'])
        : null;
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

class Description {
  Description({
    this.chn,
    this.usa,
  });

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

class Nearest {
  Nearest({
    this.status,
    this.distance,
    this.intensity,
  });

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

class Local {
  Local({
    this.status,
    this.datasource,
    this.intensity,
  });

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

class Alert {
  Alert({
    this.status,
    this.content,
    this.adcodes,
  });

  Alert.fromJson(dynamic json) {
    status = json['status'];
    if (json['content'] != null) {
      content = [];
      json['content'].forEach((v) {
        content?.add(Content.fromJson(v));
      });
    }
    if (json['adcodes'] != null) {
      adcodes = [];
      json['adcodes'].forEach((v) {
        adcodes?.add(Adcodes.fromJson(v));
      });
    }
  }

  String? status;
  List<Content>? content;
  List<Adcodes>? adcodes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (content != null) {
      map['content'] = content?.map((v) => v.toJson()).toList();
    }
    if (adcodes != null) {
      map['adcodes'] = adcodes?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Adcodes {
  Adcodes({
    this.adcode,
    this.name,
  });

  Adcodes.fromJson(dynamic json) {
    adcode = json['adcode'];
    name = json['name'];
  }

  num? adcode;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adcode'] = adcode;
    map['name'] = name;
    return map;
  }
}

class Content {
  Content({
    this.province,
    this.status,
    this.code,
    this.description,
    this.regionId,
    this.county,
    this.pubtimestamp,
    this.latlon,
    this.city,
    this.alertId,
    this.title,
    this.adcode,
    this.source,
    this.location,
    this.requestStatus,
  });

  Content.fromJson(dynamic json) {
    province = json['province'];
    status = json['status'];
    code = json['code'];
    description = json['description'];
    regionId = json['regionId'];
    county = json['county'];
    pubtimestamp = json['pubtimestamp'];
    latlon = json['latlon'] != null ? json['latlon'].cast<num>() : [];
    city = json['city'];
    alertId = json['alertId'];
    title = json['title'];
    adcode = json['adcode'];
    source = json['source'];
    location = json['location'];
    requestStatus = json['request_status'];
  }

  String? province;
  String? status;
  String? code;
  String? description;
  String? regionId;
  String? county;
  num? pubtimestamp;
  List<num>? latlon;
  String? city;
  String? alertId;
  String? title;
  String? adcode;
  String? source;
  String? location;
  String? requestStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['province'] = province;
    map['status'] = status;
    map['code'] = code;
    map['description'] = description;
    map['regionId'] = regionId;
    map['county'] = county;
    map['pubtimestamp'] = pubtimestamp;
    map['latlon'] = latlon;
    map['city'] = city;
    map['alertId'] = alertId;
    map['title'] = title;
    map['adcode'] = adcode;
    map['source'] = source;
    map['location'] = location;
    map['request_status'] = requestStatus;
    return map;
  }
}
