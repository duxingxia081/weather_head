class Weather {
  Weather({
      this.cityid, 
      this.city, 
      this.cityEn, 
      this.country, 
      this.countryEn, 
      this.updateTime, 
      this.data, 
      this.aqi,});

  Weather.fromJson(dynamic json) {
    cityid = json['cityid'];
    city = json['city'];
    cityEn = json['cityEn'];
    country = json['country'];
    countryEn = json['countryEn'];
    updateTime = json['update_time'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    aqi = json['aqi'] != null ? Aqi.fromJson(json['aqi']) : null;
  }
  String? cityid;
  String? city;
  String? cityEn;
  String? country;
  String? countryEn;
  String? updateTime;
  List<Data>? data;
  Aqi? aqi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cityid'] = cityid;
    map['city'] = city;
    map['cityEn'] = cityEn;
    map['country'] = country;
    map['countryEn'] = countryEn;
    map['update_time'] = updateTime;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    if (aqi != null) {
      map['aqi'] = aqi?.toJson();
    }
    return map;
  }

}

class Aqi {
  Aqi({
      this.air, 
      this.airLevel, 
      this.airTips, 
      this.pm25, 
      this.pm25Desc, 
      this.pm10, 
      this.pm10Desc, 
      this.o3, 
      this.o3Desc, 
      this.no2, 
      this.no2Desc, 
      this.so2, 
      this.so2Desc, 
      this.co, 
      this.coDesc, 
      this.kouzhao, 
      this.waichu, 
      this.yundong, 
      this.kaichuang, 
      this.jinghuaqi, 
      this.cityid, 
      this.city, 
      this.cityEn, 
      this.country, 
      this.countryEn,});

  Aqi.fromJson(dynamic json) {
    air = json['air'];
    airLevel = json['air_level'];
    airTips = json['air_tips'];
    pm25 = json['pm25'];
    pm25Desc = json['pm25_desc'];
    pm10 = json['pm10'];
    pm10Desc = json['pm10_desc'];
    o3 = json['o3'];
    o3Desc = json['o3_desc'];
    no2 = json['no2'];
    no2Desc = json['no2_desc'];
    so2 = json['so2'];
    so2Desc = json['so2_desc'];
    co = json['co'];
    coDesc = json['co_desc'];
    kouzhao = json['kouzhao'];
    waichu = json['waichu'];
    yundong = json['yundong'];
    kaichuang = json['kaichuang'];
    jinghuaqi = json['jinghuaqi'];
    cityid = json['cityid'];
    city = json['city'];
    cityEn = json['cityEn'];
    country = json['country'];
    countryEn = json['countryEn'];
  }
  String? air;
  String? airLevel;
  String? airTips;
  String? pm25;
  String? pm25Desc;
  String? pm10;
  String? pm10Desc;
  String? o3;
  String? o3Desc;
  String? no2;
  String? no2Desc;
  String? so2;
  String? so2Desc;
  String? co;
  String? coDesc;
  String? kouzhao;
  String? waichu;
  String? yundong;
  String? kaichuang;
  String? jinghuaqi;
  String? cityid;
  String? city;
  String? cityEn;
  String? country;
  String? countryEn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['air'] = air;
    map['air_level'] = airLevel;
    map['air_tips'] = airTips;
    map['pm25'] = pm25;
    map['pm25_desc'] = pm25Desc;
    map['pm10'] = pm10;
    map['pm10_desc'] = pm10Desc;
    map['o3'] = o3;
    map['o3_desc'] = o3Desc;
    map['no2'] = no2;
    map['no2_desc'] = no2Desc;
    map['so2'] = so2;
    map['so2_desc'] = so2Desc;
    map['co'] = co;
    map['co_desc'] = coDesc;
    map['kouzhao'] = kouzhao;
    map['waichu'] = waichu;
    map['yundong'] = yundong;
    map['kaichuang'] = kaichuang;
    map['jinghuaqi'] = jinghuaqi;
    map['cityid'] = cityid;
    map['city'] = city;
    map['cityEn'] = cityEn;
    map['country'] = country;
    map['countryEn'] = countryEn;
    return map;
  }

}

class Data {
  Data({
      this.day, 
      this.date, 
      this.week, 
      this.wea, 
      this.weaImg, 
      this.weaDay, 
      this.weaDayImg, 
      this.weaNight, 
      this.weaNightImg, 
      this.tem, 
      this.tem1, 
      this.tem2, 
      this.humidity, 
      this.visibility, 
      this.pressure, 
      this.win, 
      this.winSpeed, 
      this.winMeter, 
      this.sunrise, 
      this.sunset, 
      this.air, 
      this.airLevel, 
      this.airTips, 
      this.alarm, 
      this.hours, 
      this.index,});

  Data.fromJson(dynamic json) {
    day = json['day'];
    date = json['date'];
    week = json['week'];
    wea = json['wea'];
    weaImg = json['wea_img'];
    weaDay = json['wea_day'];
    weaDayImg = json['wea_day_img'];
    weaNight = json['wea_night'];
    weaNightImg = json['wea_night_img'];
    tem = json['tem'];
    tem1 = json['tem1'];
    tem2 = json['tem2'];
    humidity = json['humidity'];
    visibility = json['visibility'];
    pressure = json['pressure'];
    win = json['win'] != null ? json['win'].cast<String>() : [];
    winSpeed = json['win_speed'];
    winMeter = json['win_meter'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    air = json['air'];
    airLevel = json['air_level'];
    airTips = json['air_tips'];
    alarm = json['alarm'] != null ? Alarm.fromJson(json['alarm']) : null;
    if (json['hours'] != null) {
      hours = [];
      json['hours'].forEach((v) {
        hours?.add(Hours.fromJson(v));
      });
    }
    if (json['index'] != null) {
      index = [];
      json['index'].forEach((v) {
        index?.add(Index.fromJson(v));
      });
    }
  }
  String? day;
  String? date;
  String? week;
  String? wea;
  String? weaImg;
  String? weaDay;
  String? weaDayImg;
  String? weaNight;
  String? weaNightImg;
  String? tem;
  String? tem1;
  String? tem2;
  String? humidity;
  String? visibility;
  String? pressure;
  List<String>? win;
  String? winSpeed;
  String? winMeter;
  String? sunrise;
  String? sunset;
  String? air;
  String? airLevel;
  String? airTips;
  Alarm? alarm;
  List<Hours>? hours;
  List<Index>? index;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['date'] = date;
    map['week'] = week;
    map['wea'] = wea;
    map['wea_img'] = weaImg;
    map['wea_day'] = weaDay;
    map['wea_day_img'] = weaDayImg;
    map['wea_night'] = weaNight;
    map['wea_night_img'] = weaNightImg;
    map['tem'] = tem;
    map['tem1'] = tem1;
    map['tem2'] = tem2;
    map['humidity'] = humidity;
    map['visibility'] = visibility;
    map['pressure'] = pressure;
    map['win'] = win;
    map['win_speed'] = winSpeed;
    map['win_meter'] = winMeter;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['air'] = air;
    map['air_level'] = airLevel;
    map['air_tips'] = airTips;
    if (alarm != null) {
      map['alarm'] = alarm?.toJson();
    }
    if (hours != null) {
      map['hours'] = hours?.map((v) => v.toJson()).toList();
    }
    if (index != null) {
      map['index'] = index?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Index {
  Index({
      this.title, 
      this.level, 
      this.desc,});

  Index.fromJson(dynamic json) {
    title = json['title'];
    level = json['level'];
    desc = json['desc'];
  }
  String? title;
  String? level;
  String? desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['level'] = level;
    map['desc'] = desc;
    return map;
  }

}

class Hours {
  Hours({
      this.hours, 
      this.wea, 
      this.weaImg, 
      this.tem, 
      this.win, 
      this.winSpeed,});

  Hours.fromJson(dynamic json) {
    hours = json['hours'];
    wea = json['wea'];
    weaImg = json['wea_img'];
    tem = json['tem'];
    win = json['win'];
    winSpeed = json['win_speed'];
  }
  String? hours;
  String? wea;
  String? weaImg;
  String? tem;
  String? win;
  String? winSpeed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['wea'] = wea;
    map['wea_img'] = weaImg;
    map['tem'] = tem;
    map['win'] = win;
    map['win_speed'] = winSpeed;
    return map;
  }

}

class Alarm {
  Alarm({
      this.alarmType, 
      this.alarmLevel, 
      this.alarmContent,});

  Alarm.fromJson(dynamic json) {
    alarmType = json['alarm_type'];
    alarmLevel = json['alarm_level'];
    alarmContent = json['alarm_content'];
  }
  String? alarmType;
  String? alarmLevel;
  String? alarmContent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['alarm_type'] = alarmType;
    map['alarm_level'] = alarmLevel;
    map['alarm_content'] = alarmContent;
    return map;
  }

}