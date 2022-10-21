/// status : "ok"
/// api_version : "v2.6"
/// api_status : "alpha"
/// lang : "zh_CN"
/// unit : "metric"
/// tzshift : 28800
/// timezone : "Asia/Shanghai"
/// server_time : 1666251966
/// location : [39.976,116.3176]
/// result : {"minutely":{"status":"ok","datasource":"radar","precipitation_2h":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"precipitation":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"probability":[0.0,0.0,0.0,0.0],"description":"最近的降雨带在西北70公里外呢"},"primary":0,"forecast_keypoint":"最近的降雨带在西北70公里外呢"}

class MinutelyEntity {
  MinutelyEntity({
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

  MinutelyEntity.fromJson(dynamic json) {
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

/// minutely : {"status":"ok","datasource":"radar","precipitation_2h":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"precipitation":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],"probability":[0.0,0.0,0.0,0.0],"description":"最近的降雨带在西北70公里外呢"}
/// primary : 0
/// forecast_keypoint : "最近的降雨带在西北70公里外呢"

class Result {
  Result({
      this.minutely, 
      this.primary, 
      this.forecastKeypoint,});

  Result.fromJson(dynamic json) {
    minutely = json['minutely'] != null ? Minutely.fromJson(json['minutely']) : null;
    primary = json['primary'];
    forecastKeypoint = json['forecast_keypoint'];
  }
  Minutely? minutely;
  num? primary;
  String? forecastKeypoint;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (minutely != null) {
      map['minutely'] = minutely?.toJson();
    }
    map['primary'] = primary;
    map['forecast_keypoint'] = forecastKeypoint;
    return map;
  }

}

/// status : "ok"
/// datasource : "radar"
/// precipitation_2h : [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]
/// precipitation : [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]
/// probability : [0.0,0.0,0.0,0.0]
/// description : "最近的降雨带在西北70公里外呢"

class Minutely {
  Minutely({
      this.status, 
      this.datasource, 
      this.precipitation2h, 
      this.precipitation, 
      this.probability, 
      this.description,});

  Minutely.fromJson(dynamic json) {
    status = json['status'];
    datasource = json['datasource'];
    precipitation2h = json['precipitation_2h'] != null ? json['precipitation_2h'].cast<num>() : [];
    precipitation = json['precipitation'] != null ? json['precipitation'].cast<num>() : [];
    probability = json['probability'] != null ? json['probability'].cast<num>() : [];
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