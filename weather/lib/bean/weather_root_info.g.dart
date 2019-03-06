// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_root_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

weather_root_info _$weather_root_infoFromJson(Map<String, dynamic> json) {
  return weather_root_info(
      json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      json['forecastDaily'] == null
          ? null
          : ForecastDaily.fromJson(
              json['forecastDaily'] as Map<String, dynamic>),
      json['forecastHourly'] == null
          ? null
          : ForecastHourly.fromJson(
              json['forecastHourly'] as Map<String, dynamic>),
      json['indices'] == null
          ? null
          : Indices.fromJson(json['indices'] as Map<String, dynamic>),
      (json['alerts'] as List)
          ?.map((e) =>
              e == null ? null : Alerts.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['yesterday'] == null
          ? null
          : Yesterday.fromJson(json['yesterday'] as Map<String, dynamic>),
      json['url'] == null
          ? null
          : Url.fromJson(json['url'] as Map<String, dynamic>),
      json['brandInfo'] == null
          ? null
          : BrandInfo.fromJson(json['brandInfo'] as Map<String, dynamic>),
      (json['preHour'] as List)
          ?.map((e) =>
              e == null ? null : PreHour.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['updateTime'] as int,
      json['aqi'] == null
          ? null
          : Aqi.fromJson(json['aqi'] as Map<String, dynamic>));
}

Map<String, dynamic> _$weather_root_infoToJson(weather_root_info instance) =>
    <String, dynamic>{
      'current': instance.current,
      'forecastDaily': instance.forecastDaily,
      'forecastHourly': instance.forecastHourly,
      'indices': instance.indices,
      'alerts': instance.alerts,
      'yesterday': instance.yesterday,
      'url': instance.url,
      'brandInfo': instance.brandInfo,
      'preHour': instance.preHour,
      'updateTime': instance.updateTime,
      'aqi': instance.aqi
    };

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current(
      json['feelsLike'] == null
          ? null
          : CurrentFeelsLike.fromJson(
              json['feelsLike'] as Map<String, dynamic>),
      json['humidity'] == null
          ? null
          : CurrentHumidity.fromJson(json['humidity'] as Map<String, dynamic>),
      json['pressure'] == null
          ? null
          : CurrentPressure.fromJson(json['pressure'] as Map<String, dynamic>),
      json['pubTime'] as String,
      json['temperature'] == null
          ? null
          : CurrentTemperature.fromJson(
              json['temperature'] as Map<String, dynamic>),
      json['uvIndex'] as String,
      json['visibility'] == null
          ? null
          : CurrentVisibility.fromJson(
              json['visibility'] as Map<String, dynamic>),
      json['weather'] as String,
      json['wind'] == null
          ? null
          : CurrentWind.fromJson(json['wind'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'feelsLike': instance.feelsLike,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'pubTime': instance.pubTime,
      'temperature': instance.temperature,
      'uvIndex': instance.uvIndex,
      'visibility': instance.visibility,
      'weather': instance.weather,
      'wind': instance.wind
    };

CurrentFeelsLike _$CurrentFeelsLikeFromJson(Map<String, dynamic> json) {
  return CurrentFeelsLike(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$CurrentFeelsLikeToJson(CurrentFeelsLike instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

CurrentHumidity _$CurrentHumidityFromJson(Map<String, dynamic> json) {
  return CurrentHumidity(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$CurrentHumidityToJson(CurrentHumidity instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

CurrentPressure _$CurrentPressureFromJson(Map<String, dynamic> json) {
  return CurrentPressure(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$CurrentPressureToJson(CurrentPressure instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

CurrentTemperature _$CurrentTemperatureFromJson(Map<String, dynamic> json) {
  return CurrentTemperature(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$CurrentTemperatureToJson(CurrentTemperature instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

CurrentVisibility _$CurrentVisibilityFromJson(Map<String, dynamic> json) {
  return CurrentVisibility(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$CurrentVisibilityToJson(CurrentVisibility instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

CurrentWind _$CurrentWindFromJson(Map<String, dynamic> json) {
  return CurrentWind(
      json['direction'] == null
          ? null
          : Direction.fromJson(json['direction'] as Map<String, dynamic>),
      json['speed'] == null
          ? null
          : Speed.fromJson(json['speed'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CurrentWindToJson(CurrentWind instance) =>
    <String, dynamic>{'direction': instance.direction, 'speed': instance.speed};

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return Direction(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$DirectionToJson(Direction instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

Speed _$SpeedFromJson(Map<String, dynamic> json) {
  return Speed(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$SpeedToJson(Speed instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

ForecastDaily _$ForecastDailyFromJson(Map<String, dynamic> json) {
  return ForecastDaily(
      json['aqi'] == null
          ? null
          : ForecastSunAqi.fromJson(json['aqi'] as Map<String, dynamic>),
      json['precipitationProbability'] == null
          ? null
          : PrecipitationProbability.fromJson(
              json['precipitationProbability'] as Map<String, dynamic>),
      json['pubTime'] as String,
      json['status'] as int,
      json['sunRiseSet'] == null
          ? null
          : ForecastSunRiseSet.fromJson(
              json['sunRiseSet'] as Map<String, dynamic>),
      json['temperature'] == null
          ? null
          : ForecastDailyTemperature.fromJson(
              json['temperature'] as Map<String, dynamic>),
      json['weather'] == null
          ? null
          : ForecastDailyWeather.fromJson(
              json['weather'] as Map<String, dynamic>),
      json['wind'] == null
          ? null
          : ForecastDailyWind.fromJson(json['wind'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ForecastDailyToJson(ForecastDaily instance) =>
    <String, dynamic>{
      'aqi': instance.aqi,
      'precipitationProbability': instance.precipitationProbability,
      'pubTime': instance.pubTime,
      'status': instance.status,
      'sunRiseSet': instance.sunRiseSet,
      'temperature': instance.temperature,
      'weather': instance.weather,
      'wind': instance.wind
    };

ForecastSunAqi _$ForecastSunAqiFromJson(Map<String, dynamic> json) {
  return ForecastSunAqi(json['status'] as int);
}

Map<String, dynamic> _$ForecastSunAqiToJson(ForecastSunAqi instance) =>
    <String, dynamic>{'status': instance.status};

PrecipitationProbability _$PrecipitationProbabilityFromJson(
    Map<String, dynamic> json) {
  return PrecipitationProbability(json['status'] as int,
      (json['value'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$PrecipitationProbabilityToJson(
        PrecipitationProbability instance) =>
    <String, dynamic>{'status': instance.status, 'value': instance.value};

ForecastSunRiseSet _$ForecastSunRiseSetFromJson(Map<String, dynamic> json) {
  return ForecastSunRiseSet(
      json['status'] as int,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : SunRiseSetValue.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastSunRiseSetToJson(ForecastSunRiseSet instance) =>
    <String, dynamic>{'status': instance.status, 'value': instance.value};

SunRiseSetValue _$SunRiseSetValueFromJson(Map<String, dynamic> json) {
  return SunRiseSetValue(json['from'] as String, json['to'] as String);
}

Map<String, dynamic> _$SunRiseSetValueToJson(SunRiseSetValue instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

ForecastDailyTemperature _$ForecastDailyTemperatureFromJson(
    Map<String, dynamic> json) {
  return ForecastDailyTemperature(
      json['status'] as int,
      json['unit'] as String,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : TemperatureValue.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastDailyTemperatureToJson(
        ForecastDailyTemperature instance) =>
    <String, dynamic>{
      'status': instance.status,
      'unit': instance.unit,
      'value': instance.value
    };

TemperatureValue _$TemperatureValueFromJson(Map<String, dynamic> json) {
  return TemperatureValue(json['from'] as String, json['to'] as String);
}

Map<String, dynamic> _$TemperatureValueToJson(TemperatureValue instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

ForecastDailyWeather _$ForecastDailyWeatherFromJson(Map<String, dynamic> json) {
  return ForecastDailyWeather(
      json['status'] as int,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : WeatherValue.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastDailyWeatherToJson(
        ForecastDailyWeather instance) =>
    <String, dynamic>{'status': instance.status, 'value': instance.value};

WeatherValue _$WeatherValueFromJson(Map<String, dynamic> json) {
  return WeatherValue(json['from'] as String, json['to'] as String);
}

Map<String, dynamic> _$WeatherValueToJson(WeatherValue instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

ForecastDailyWind _$ForecastDailyWindFromJson(Map<String, dynamic> json) {
  return ForecastDailyWind(
      json['direction'] == null
          ? null
          : ForecastDailyWindDirection.fromJson(
              json['direction'] as Map<String, dynamic>),
      json['speed'] == null
          ? null
          : ForecastDailyWindSpeed.fromJson(
              json['speed'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ForecastDailyWindToJson(ForecastDailyWind instance) =>
    <String, dynamic>{'direction': instance.direction, 'speed': instance.speed};

ForecastDailyWindDirection _$ForecastDailyWindDirectionFromJson(
    Map<String, dynamic> json) {
  return ForecastDailyWindDirection(
      json['status'] as int,
      json['unit'] as String,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : ForecastDailyWindDirectionValue.fromJson(
                  e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastDailyWindDirectionToJson(
        ForecastDailyWindDirection instance) =>
    <String, dynamic>{
      'status': instance.status,
      'unit': instance.unit,
      'value': instance.value
    };

ForecastDailyWindDirectionValue _$ForecastDailyWindDirectionValueFromJson(
    Map<String, dynamic> json) {
  return ForecastDailyWindDirectionValue(
      json['from'] as String, json['to'] as String);
}

Map<String, dynamic> _$ForecastDailyWindDirectionValueToJson(
        ForecastDailyWindDirectionValue instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

ForecastDailyWindSpeed _$ForecastDailyWindSpeedFromJson(
    Map<String, dynamic> json) {
  return ForecastDailyWindSpeed(
      json['status'] as int,
      json['unit'] as String,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : ForecastDailyWindSpeedValue.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastDailyWindSpeedToJson(
        ForecastDailyWindSpeed instance) =>
    <String, dynamic>{
      'status': instance.status,
      'unit': instance.unit,
      'value': instance.value
    };

ForecastDailyWindSpeedValue _$ForecastDailyWindSpeedValueFromJson(
    Map<String, dynamic> json) {
  return ForecastDailyWindSpeedValue(
      json['from'] as String, json['to'] as String);
}

Map<String, dynamic> _$ForecastDailyWindSpeedValueToJson(
        ForecastDailyWindSpeedValue instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

ForecastHourly _$ForecastHourlyFromJson(Map<String, dynamic> json) {
  return ForecastHourly(
      json['aqi'] == null
          ? null
          : ForecastHourlyAqi.fromJson(json['aqi'] as Map<String, dynamic>),
      json['desc'] as String,
      json['status'] as int,
      json['temperature'] == null
          ? null
          : ForecastHourlyTemperature.fromJson(
              json['temperature'] as Map<String, dynamic>),
      json['weather'] == null
          ? null
          : ForecastHourlyWeather.fromJson(
              json['weather'] as Map<String, dynamic>),
      json['wind'] == null
          ? null
          : ForecastHourlyWind.fromJson(json['wind'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ForecastHourlyToJson(ForecastHourly instance) =>
    <String, dynamic>{
      'aqi': instance.aqi,
      'desc': instance.desc,
      'status': instance.status,
      'temperature': instance.temperature,
      'weather': instance.weather,
      'wind': instance.wind
    };

ForecastHourlyAqi _$ForecastHourlyAqiFromJson(Map<String, dynamic> json) {
  return ForecastHourlyAqi(json['status'] as int);
}

Map<String, dynamic> _$ForecastHourlyAqiToJson(ForecastHourlyAqi instance) =>
    <String, dynamic>{'status': instance.status};

ForecastHourlyTemperature _$ForecastHourlyTemperatureFromJson(
    Map<String, dynamic> json) {
  return ForecastHourlyTemperature(
      json['pubTime'] as String,
      json['status'] as int,
      json['unit'] as String,
      (json['value'] as List)?.map((e) => e as int)?.toList());
}

Map<String, dynamic> _$ForecastHourlyTemperatureToJson(
        ForecastHourlyTemperature instance) =>
    <String, dynamic>{
      'pubTime': instance.pubTime,
      'status': instance.status,
      'unit': instance.unit,
      'value': instance.value
    };

ForecastHourlyWeather _$ForecastHourlyWeatherFromJson(
    Map<String, dynamic> json) {
  return ForecastHourlyWeather(json['pubTime'] as String, json['status'] as int,
      (json['value'] as List)?.map((e) => e as int)?.toList());
}

Map<String, dynamic> _$ForecastHourlyWeatherToJson(
        ForecastHourlyWeather instance) =>
    <String, dynamic>{
      'pubTime': instance.pubTime,
      'status': instance.status,
      'value': instance.value
    };

ForecastHourlyWind _$ForecastHourlyWindFromJson(Map<String, dynamic> json) {
  return ForecastHourlyWind(
      json['status'] as int,
      (json['value'] as List)
          ?.map((e) => e == null
              ? null
              : ForecastHourlyWindValue.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastHourlyWindToJson(ForecastHourlyWind instance) =>
    <String, dynamic>{'status': instance.status, 'value': instance.value};

ForecastHourlyWindValue _$ForecastHourlyWindValueFromJson(
    Map<String, dynamic> json) {
  return ForecastHourlyWindValue(json['datetime'] as String,
      json['direction'] as String, json['speed'] as String);
}

Map<String, dynamic> _$ForecastHourlyWindValueToJson(
        ForecastHourlyWindValue instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'direction': instance.direction,
      'speed': instance.speed
    };

Indices _$IndicesFromJson(Map<String, dynamic> json) {
  return Indices(
      (json['indices'] as List)
          ?.map((e) => e == null
              ? null
              : IndiceItems.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['pubTime'] as String,
      json['status'] as int);
}

Map<String, dynamic> _$IndicesToJson(Indices instance) => <String, dynamic>{
      'indices': instance.indices,
      'pubTime': instance.pubTime,
      'status': instance.status
    };

IndiceItems _$IndiceItemsFromJson(Map<String, dynamic> json) {
  return IndiceItems(json['type'] as String, json['value'] as String);
}

Map<String, dynamic> _$IndiceItemsToJson(IndiceItems instance) =>
    <String, dynamic>{'type': instance.type, 'value': instance.value};

Alerts _$AlertsFromJson(Map<String, dynamic> json) {
  return Alerts(
      json['alertId'] as String,
      json['detail'] as String,
      json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      json['level'] as String,
      json['locationKey'] as String,
      json['pubTime'] as String,
      json['title'] as String,
      json['type'] as String);
}

Map<String, dynamic> _$AlertsToJson(Alerts instance) => <String, dynamic>{
      'alertId': instance.alertId,
      'detail': instance.detail,
      'images': instance.images,
      'level': instance.level,
      'locationKey': instance.locationKey,
      'pubTime': instance.pubTime,
      'title': instance.title,
      'type': instance.type
    };

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(json['icon'] as String, json['notice'] as String);
}

Map<String, dynamic> _$ImagesToJson(Images instance) =>
    <String, dynamic>{'icon': instance.icon, 'notice': instance.notice};

Yesterday _$YesterdayFromJson(Map<String, dynamic> json) {
  return Yesterday(
      json['aqi'] as String,
      json['date'] as String,
      json['status'] as int,
      json['sunRise'] as String,
      json['sunSet'] as String,
      json['tempMax'] as String,
      json['tempMin'] as String,
      json['weatherEnd'] as String,
      json['weatherStart'] as String,
      json['windDircEnd'] as String,
      json['windDircStart'] as String,
      json['windSpeedEnd'] as String,
      json['windSpeedStart'] as String);
}

Map<String, dynamic> _$YesterdayToJson(Yesterday instance) => <String, dynamic>{
      'aqi': instance.aqi,
      'date': instance.date,
      'status': instance.status,
      'sunRise': instance.sunRise,
      'sunSet': instance.sunSet,
      'tempMax': instance.tempMax,
      'tempMin': instance.tempMin,
      'weatherEnd': instance.weatherEnd,
      'weatherStart': instance.weatherStart,
      'windDircEnd': instance.windDircEnd,
      'windDircStart': instance.windDircStart,
      'windSpeedEnd': instance.windSpeedEnd,
      'windSpeedStart': instance.windSpeedStart
    };

Url _$UrlFromJson(Map<String, dynamic> json) {
  return Url(json['weathercn'] as String, json['caiyun'] as String);
}

Map<String, dynamic> _$UrlToJson(Url instance) => <String, dynamic>{
      'weathercn': instance.weathercn,
      'caiyun': instance.caiyun
    };

BrandInfo _$BrandInfoFromJson(Map<String, dynamic> json) {
  return BrandInfo((json['brands'] as List)
      ?.map(
          (e) => e == null ? null : Brands.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$BrandInfoToJson(BrandInfo instance) =>
    <String, dynamic>{'brands': instance.brands};

Brands _$BrandsFromJson(Map<String, dynamic> json) {
  return Brands(
      json['brandId'] as String,
      json['logo'] as String,
      json['names'] == null
          ? null
          : Names.fromJson(json['names'] as Map<String, dynamic>),
      json['url'] as String);
}

Map<String, dynamic> _$BrandsToJson(Brands instance) => <String, dynamic>{
      'brandId': instance.brandId,
      'logo': instance.logo,
      'names': instance.names,
      'url': instance.url
    };

Names _$NamesFromJson(Map<String, dynamic> json) {
  return Names(json['en_US'] as String, json['zh_TW'] as String,
      json['zh_CN'] as String);
}

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'en_US': instance.enUS,
      'zh_TW': instance.zhTW,
      'zh_CN': instance.zhCN
    };

PreHour _$PreHourFromJson(Map<String, dynamic> json) {
  return PreHour(
      json['pubTime'] as String,
      json['wind'] == null
          ? null
          : PreHourWind.fromJson(json['wind'] as Map<String, dynamic>),
      json['humidity'] == null
          ? null
          : PreHourHumidity.fromJson(json['humidity'] as Map<String, dynamic>),
      json['pressure'] == null
          ? null
          : PreHourPressure.fromJson(json['pressure'] as Map<String, dynamic>),
      json['visibility'] == null
          ? null
          : PreHourVisibility.fromJson(
              json['visibility'] as Map<String, dynamic>),
      json['feelsLike'] == null
          ? null
          : PreHourFeelsLike.fromJson(
              json['feelsLike'] as Map<String, dynamic>),
      json['aqi'] == null
          ? null
          : PreHourAqi.fromJson(json['aqi'] as Map<String, dynamic>),
      json['uvIndex'] as String,
      json['weather'] as String,
      json['temperature'] == null
          ? null
          : PreHourTemperature.fromJson(
              json['temperature'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PreHourToJson(PreHour instance) => <String, dynamic>{
      'pubTime': instance.pubTime,
      'wind': instance.wind,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'feelsLike': instance.feelsLike,
      'aqi': instance.aqi,
      'uvIndex': instance.uvIndex,
      'weather': instance.weather,
      'temperature': instance.temperature
    };

PreHourWind _$PreHourWindFromJson(Map<String, dynamic> json) {
  return PreHourWind(
      json['speed'] == null
          ? null
          : PreHourWindSpeed.fromJson(json['speed'] as Map<String, dynamic>),
      json['direction'] == null
          ? null
          : PreHourWindDirection.fromJson(
              json['direction'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PreHourWindToJson(PreHourWind instance) =>
    <String, dynamic>{'speed': instance.speed, 'direction': instance.direction};

PreHourWindSpeed _$PreHourWindSpeedFromJson(Map<String, dynamic> json) {
  return PreHourWindSpeed(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourWindSpeedToJson(PreHourWindSpeed instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourWindDirection _$PreHourWindDirectionFromJson(Map<String, dynamic> json) {
  return PreHourWindDirection(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourWindDirectionToJson(
        PreHourWindDirection instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourHumidity _$PreHourHumidityFromJson(Map<String, dynamic> json) {
  return PreHourHumidity(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourHumidityToJson(PreHourHumidity instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourPressure _$PreHourPressureFromJson(Map<String, dynamic> json) {
  return PreHourPressure(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourPressureToJson(PreHourPressure instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourVisibility _$PreHourVisibilityFromJson(Map<String, dynamic> json) {
  return PreHourVisibility(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourVisibilityToJson(PreHourVisibility instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourFeelsLike _$PreHourFeelsLikeFromJson(Map<String, dynamic> json) {
  return PreHourFeelsLike(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourFeelsLikeToJson(PreHourFeelsLike instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

PreHourAqi _$PreHourAqiFromJson(Map<String, dynamic> json) {
  return PreHourAqi(
      json['pubTime'] as String,
      json['so2'] as String,
      json['pm10Desc'] as String,
      json['o3'] as String,
      json['status'] as int,
      json['no2Desc'] as String,
      json['suggest'] as String,
      json['so2Desc'] as String,
      json['co'] as String,
      json['o3Desc'] as String,
      json['no2'] as String,
      json['primary'] as String,
      json['aqi'] as String,
      json['coDesc'] as String,
      json['pm10'] as String,
      json['pm25Desc'] as String,
      json['pm25'] as String,
      json['src'] as String,
      json['brandInfo'] == null
          ? null
          : PreHourAqiBrandInfo.fromJson(
              json['brandInfo'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PreHourAqiToJson(PreHourAqi instance) =>
    <String, dynamic>{
      'pubTime': instance.pubTime,
      'so2': instance.so2,
      'pm10Desc': instance.pm10Desc,
      'o3': instance.o3,
      'status': instance.status,
      'no2Desc': instance.no2Desc,
      'suggest': instance.suggest,
      'so2Desc': instance.so2Desc,
      'co': instance.co,
      'o3Desc': instance.o3Desc,
      'no2': instance.no2,
      'primary': instance.primary,
      'aqi': instance.aqi,
      'coDesc': instance.coDesc,
      'pm10': instance.pm10,
      'pm25Desc': instance.pm25Desc,
      'pm25': instance.pm25,
      'src': instance.src,
      'brandInfo': instance.brandInfo
    };

PreHourAqiBrandInfo _$PreHourAqiBrandInfoFromJson(Map<String, dynamic> json) {
  return PreHourAqiBrandInfo((json['brands'] as List)
      ?.map((e) => e == null
          ? null
          : PreHourAqiBrandInfoBrands.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$PreHourAqiBrandInfoToJson(
        PreHourAqiBrandInfo instance) =>
    <String, dynamic>{'brands': instance.brands};

PreHourAqiBrandInfoBrands _$PreHourAqiBrandInfoBrandsFromJson(
    Map<String, dynamic> json) {
  return PreHourAqiBrandInfoBrands(
      json['logo'] as String,
      json['names'] == null
          ? null
          : PreHourAqiBrandInfoBrandsNames.fromJson(
              json['names'] as Map<String, dynamic>),
      json['brandId'] as String,
      json['url'] as String);
}

Map<String, dynamic> _$PreHourAqiBrandInfoBrandsToJson(
        PreHourAqiBrandInfoBrands instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'names': instance.names,
      'brandId': instance.brandId,
      'url': instance.url
    };

PreHourAqiBrandInfoBrandsNames _$PreHourAqiBrandInfoBrandsNamesFromJson(
    Map<String, dynamic> json) {
  return PreHourAqiBrandInfoBrandsNames(json['zh_TW'] as String,
      json['en_US'] as String, json['zh_CN'] as String);
}

Map<String, dynamic> _$PreHourAqiBrandInfoBrandsNamesToJson(
        PreHourAqiBrandInfoBrandsNames instance) =>
    <String, dynamic>{
      'zh_TW': instance.zhTW,
      'en_US': instance.enUS,
      'zh_CN': instance.zhCN
    };

PreHourTemperature _$PreHourTemperatureFromJson(Map<String, dynamic> json) {
  return PreHourTemperature(json['unit'] as String, json['value'] as String);
}

Map<String, dynamic> _$PreHourTemperatureToJson(PreHourTemperature instance) =>
    <String, dynamic>{'unit': instance.unit, 'value': instance.value};

Aqi _$AqiFromJson(Map<String, dynamic> json) {
  return Aqi(json['status'] as int);
}

Map<String, dynamic> _$AqiToJson(Aqi instance) =>
    <String, dynamic>{'status': instance.status};
