class Weather {
  Weather({
      this.realtime, 
      this.primary,});

  Weather.fromJson(dynamic json) {
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