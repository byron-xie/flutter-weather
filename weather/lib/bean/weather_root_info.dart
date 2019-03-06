import 'package:json_annotation/json_annotation.dart';

part 'weather_root_info.g.dart';

class weather_root_info extends Object {
  Current current;

  @JsonKey(name: 'forecastDaily')
  ForecastDaily forecastDaily;

  @JsonKey(name: 'forecastHourly')
  ForecastHourly forecastHourly;

  @JsonKey(name: 'indices')
  Indices indices;

  @JsonKey(name: 'alerts')
  List<Alerts> alerts;

  @JsonKey(name: 'yesterday')
  Yesterday yesterday;

  @JsonKey(name: 'url')
  Url url;

  @JsonKey(name: 'brandInfo')
  BrandInfo brandInfo;

  @JsonKey(name: 'preHour')
  List<PreHour> preHour;

  @JsonKey(name: 'updateTime')
  int updateTime;

  @JsonKey(name: 'aqi')
  Aqi aqi;

  weather_root_info(
    this.current,
    this.forecastDaily,
    this.forecastHourly,
    this.indices,
    this.alerts,
    this.yesterday,
    this.url,
    this.brandInfo,
    this.preHour,
    this.updateTime,
    this.aqi,
  );

  factory weather_root_info.fromJson(Map<String, dynamic> srcJson) =>
      _$weather_root_infoFromJson(srcJson);
}

@JsonSerializable()
class Current extends Object {
  @JsonKey(name: 'feelsLike')
  CurrentFeelsLike feelsLike;

  @JsonKey(name: 'humidity')
  CurrentHumidity humidity;

  @JsonKey(name: 'pressure')
  CurrentPressure pressure;

  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'temperature')
  CurrentTemperature temperature;

  @JsonKey(name: 'uvIndex')
  String uvIndex;

  @JsonKey(name: 'visibility')
  CurrentVisibility visibility;

  @JsonKey(name: 'weather')
  String weather;

  @JsonKey(name: 'wind')
  CurrentWind wind;

  Current(
    this.feelsLike,
    this.humidity,
    this.pressure,
    this.pubTime,
    this.temperature,
    this.uvIndex,
    this.visibility,
    this.weather,
    this.wind,
  );

  factory Current.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentFromJson(srcJson);
}

@JsonSerializable()
class CurrentFeelsLike extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  CurrentFeelsLike(
    this.unit,
    this.value,
  );

  factory CurrentFeelsLike.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentFeelsLikeFromJson(srcJson);
}

@JsonSerializable()
class CurrentHumidity extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  CurrentHumidity(
    this.unit,
    this.value,
  );

  factory CurrentHumidity.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentHumidityFromJson(srcJson);
}

@JsonSerializable()
class CurrentPressure extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  CurrentPressure(
    this.unit,
    this.value,
  );

  factory CurrentPressure.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentPressureFromJson(srcJson);
}

@JsonSerializable()
class CurrentTemperature extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  CurrentTemperature(
    this.unit,
    this.value,
  );

  factory CurrentTemperature.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentTemperatureFromJson(srcJson);
}

@JsonSerializable()
class CurrentVisibility extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  CurrentVisibility(
    this.unit,
    this.value,
  );

  factory CurrentVisibility.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentVisibilityFromJson(srcJson);
}

@JsonSerializable()
class CurrentWind extends Object {
  @JsonKey(name: 'direction')
  Direction direction;

  @JsonKey(name: 'speed')
  Speed speed;

  CurrentWind(
    this.direction,
    this.speed,
  );

  factory CurrentWind.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentWindFromJson(srcJson);
}

@JsonSerializable()
class Direction extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  Direction(
    this.unit,
    this.value,
  );

  factory Direction.fromJson(Map<String, dynamic> srcJson) =>
      _$DirectionFromJson(srcJson);
}

@JsonSerializable()
class Speed extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  Speed(
    this.unit,
    this.value,
  );

  factory Speed.fromJson(Map<String, dynamic> srcJson) =>
      _$SpeedFromJson(srcJson);
}

@JsonSerializable()
class ForecastDaily extends Object {
  @JsonKey(name: 'aqi')
  ForecastSunAqi aqi;

  @JsonKey(name: 'precipitationProbability')
  PrecipitationProbability precipitationProbability;

  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'sunRiseSet')
  ForecastSunRiseSet sunRiseSet;

  @JsonKey(name: 'temperature')
  ForecastDailyTemperature temperature;

  @JsonKey(name: 'weather')
  ForecastDailyWeather weather;

  @JsonKey(name: 'wind')
  ForecastDailyWind wind;

  ForecastDaily(
    this.aqi,
    this.precipitationProbability,
    this.pubTime,
    this.status,
    this.sunRiseSet,
    this.temperature,
    this.weather,
    this.wind,
  );

  factory ForecastDaily.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyFromJson(srcJson);
}

@JsonSerializable()
class ForecastSunAqi extends Object {
  @JsonKey(name: 'status')
  int status;

  ForecastSunAqi(
    this.status,
  );

  factory ForecastSunAqi.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastSunAqiFromJson(srcJson);
}

@JsonSerializable()
class PrecipitationProbability extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'value')
  List<String> value;

  PrecipitationProbability(
    this.status,
    this.value,
  );

  factory PrecipitationProbability.fromJson(Map<String, dynamic> srcJson) =>
      _$PrecipitationProbabilityFromJson(srcJson);
}

@JsonSerializable()
class ForecastSunRiseSet extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'value')
  List<SunRiseSetValue> value;

  ForecastSunRiseSet(
    this.status,
    this.value,
  );

  factory ForecastSunRiseSet.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastSunRiseSetFromJson(srcJson);
}

@JsonSerializable()
class SunRiseSetValue extends Object {
  @JsonKey(name: 'from')
  String from;

  @JsonKey(name: 'to')
  String to;

  SunRiseSetValue(
    this.from,
    this.to,
  );

  factory SunRiseSetValue.fromJson(Map<String, dynamic> srcJson) =>
      _$SunRiseSetValueFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyTemperature extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  List<TemperatureValue> value;

  ForecastDailyTemperature(
    this.status,
    this.unit,
    this.value,
  );

  factory ForecastDailyTemperature.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyTemperatureFromJson(srcJson);
}

@JsonSerializable()
class TemperatureValue extends Object {
  @JsonKey(name: 'from')
  String from;

  @JsonKey(name: 'to')
  String to;

  TemperatureValue(
    this.from,
    this.to,
  );

  factory TemperatureValue.fromJson(Map<String, dynamic> srcJson) =>
      _$TemperatureValueFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWeather extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'value')
  List<WeatherValue> value;

  ForecastDailyWeather(
    this.status,
    this.value,
  );

  factory ForecastDailyWeather.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyWeatherFromJson(srcJson);
}

@JsonSerializable()
class WeatherValue extends Object {
  @JsonKey(name: 'from')
  String from;

  @JsonKey(name: 'to')
  String to;

  WeatherValue(
    this.from,
    this.to,
  );

  factory WeatherValue.fromJson(Map<String, dynamic> srcJson) =>
      _$WeatherValueFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWind extends Object {
  @JsonKey(name: 'direction')
  ForecastDailyWindDirection direction;

  @JsonKey(name: 'speed')
  ForecastDailyWindSpeed speed;

  ForecastDailyWind(
    this.direction,
    this.speed,
  );

  factory ForecastDailyWind.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyWindFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWindDirection extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  List<ForecastDailyWindDirectionValue> value;

  ForecastDailyWindDirection(
    this.status,
    this.unit,
    this.value,
  );

  factory ForecastDailyWindDirection.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyWindDirectionFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWindDirectionValue extends Object {
  @JsonKey(name: 'from')
  String from;

  @JsonKey(name: 'to')
  String to;

  ForecastDailyWindDirectionValue(
    this.from,
    this.to,
  );

  factory ForecastDailyWindDirectionValue.fromJson(
          Map<String, dynamic> srcJson) =>
      _$ForecastDailyWindDirectionValueFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWindSpeed extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  List<ForecastDailyWindSpeedValue> value;

  ForecastDailyWindSpeed(
    this.status,
    this.unit,
    this.value,
  );

  factory ForecastDailyWindSpeed.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyWindSpeedFromJson(srcJson);
}

@JsonSerializable()
class ForecastDailyWindSpeedValue extends Object {
  @JsonKey(name: 'from')
  String from;

  @JsonKey(name: 'to')
  String to;

  ForecastDailyWindSpeedValue(
    this.from,
    this.to,
  );

  factory ForecastDailyWindSpeedValue.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastDailyWindSpeedValueFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourly extends Object {
  @JsonKey(name: 'aqi')
  ForecastHourlyAqi aqi;

  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'temperature')
  ForecastHourlyTemperature temperature;

  @JsonKey(name: 'weather')
  ForecastHourlyWeather weather;

  @JsonKey(name: 'wind')
  ForecastHourlyWind wind;

  ForecastHourly(
    this.aqi,
    this.desc,
    this.status,
    this.temperature,
    this.weather,
    this.wind,
  );

  factory ForecastHourly.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourlyAqi extends Object {
  @JsonKey(name: 'status')
  int status;

  ForecastHourlyAqi(
    this.status,
  );

  factory ForecastHourlyAqi.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyAqiFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourlyTemperature extends Object {
  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  List<int> value;

  ForecastHourlyTemperature(
    this.pubTime,
    this.status,
    this.unit,
    this.value,
  );

  factory ForecastHourlyTemperature.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyTemperatureFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourlyWeather extends Object {
  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'value')
  List<int> value;

  ForecastHourlyWeather(
    this.pubTime,
    this.status,
    this.value,
  );

  factory ForecastHourlyWeather.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyWeatherFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourlyWind extends Object {
  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'value')
  List<ForecastHourlyWindValue> value;

  ForecastHourlyWind(
    this.status,
    this.value,
  );

  factory ForecastHourlyWind.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyWindFromJson(srcJson);
}

@JsonSerializable()
class ForecastHourlyWindValue extends Object {
  @JsonKey(name: 'datetime')
  String datetime;

  @JsonKey(name: 'direction')
  String direction;

  @JsonKey(name: 'speed')
  String speed;

  ForecastHourlyWindValue(
    this.datetime,
    this.direction,
    this.speed,
  );

  factory ForecastHourlyWindValue.fromJson(Map<String, dynamic> srcJson) =>
      _$ForecastHourlyWindValueFromJson(srcJson);
}

@JsonSerializable()
class Indices extends Object {
  @JsonKey(name: 'indices')
  List<IndiceItems> indices;

  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'status')
  int status;

  Indices(
    this.indices,
    this.pubTime,
    this.status,
  );

  factory Indices.fromJson(Map<String, dynamic> srcJson) =>
      _$IndicesFromJson(srcJson);
}

@JsonSerializable()
class IndiceItems extends Object {
  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'value')
  String value;

  IndiceItems(
    this.type,
    this.value,
  );

  factory IndiceItems.fromJson(Map<String, dynamic> srcJson) =>
      _$IndiceItemsFromJson(srcJson);
}

@JsonSerializable()
class Alerts extends Object {
  @JsonKey(name: 'alertId')
  String alertId;

  @JsonKey(name: 'detail')
  String detail;

  @JsonKey(name: 'images')
  Images images;

  @JsonKey(name: 'level')
  String level;

  @JsonKey(name: 'locationKey')
  String locationKey;

  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'type')
  String type;

  Alerts(
    this.alertId,
    this.detail,
    this.images,
    this.level,
    this.locationKey,
    this.pubTime,
    this.title,
    this.type,
  );

  factory Alerts.fromJson(Map<String, dynamic> srcJson) =>
      _$AlertsFromJson(srcJson);
}

@JsonSerializable()
class Images extends Object {
  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'notice')
  String notice;

  Images(
    this.icon,
    this.notice,
  );

  factory Images.fromJson(Map<String, dynamic> srcJson) =>
      _$ImagesFromJson(srcJson);
}

@JsonSerializable()
class Yesterday extends Object {
  @JsonKey(name: 'aqi')
  String aqi;

  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'sunRise')
  String sunRise;

  @JsonKey(name: 'sunSet')
  String sunSet;

  @JsonKey(name: 'tempMax')
  String tempMax;

  @JsonKey(name: 'tempMin')
  String tempMin;

  @JsonKey(name: 'weatherEnd')
  String weatherEnd;

  @JsonKey(name: 'weatherStart')
  String weatherStart;

  @JsonKey(name: 'windDircEnd')
  String windDircEnd;

  @JsonKey(name: 'windDircStart')
  String windDircStart;

  @JsonKey(name: 'windSpeedEnd')
  String windSpeedEnd;

  @JsonKey(name: 'windSpeedStart')
  String windSpeedStart;

  Yesterday(
    this.aqi,
    this.date,
    this.status,
    this.sunRise,
    this.sunSet,
    this.tempMax,
    this.tempMin,
    this.weatherEnd,
    this.weatherStart,
    this.windDircEnd,
    this.windDircStart,
    this.windSpeedEnd,
    this.windSpeedStart,
  );

  factory Yesterday.fromJson(Map<String, dynamic> srcJson) =>
      _$YesterdayFromJson(srcJson);
}

@JsonSerializable()
class Url extends Object {
  @JsonKey(name: 'weathercn')
  String weathercn;

  @JsonKey(name: 'caiyun')
  String caiyun;

  Url(
    this.weathercn,
    this.caiyun,
  );

  factory Url.fromJson(Map<String, dynamic> srcJson) => _$UrlFromJson(srcJson);
}

@JsonSerializable()
class BrandInfo extends Object {
  @JsonKey(name: 'brands')
  List<Brands> brands;

  BrandInfo(
    this.brands,
  );

  factory BrandInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$BrandInfoFromJson(srcJson);
}

@JsonSerializable()
class Brands extends Object {
  @JsonKey(name: 'brandId')
  String brandId;

  @JsonKey(name: 'logo')
  String logo;

  @JsonKey(name: 'names')
  Names names;

  @JsonKey(name: 'url')
  String url;

  Brands(
    this.brandId,
    this.logo,
    this.names,
    this.url,
  );

  factory Brands.fromJson(Map<String, dynamic> srcJson) =>
      _$BrandsFromJson(srcJson);
}

@JsonSerializable()
class Names extends Object {
  @JsonKey(name: 'en_US')
  String enUS;

  @JsonKey(name: 'zh_TW')
  String zhTW;

  @JsonKey(name: 'zh_CN')
  String zhCN;

  Names(
    this.enUS,
    this.zhTW,
    this.zhCN,
  );

  factory Names.fromJson(Map<String, dynamic> srcJson) =>
      _$NamesFromJson(srcJson);
}

@JsonSerializable()
class PreHour extends Object {
  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'wind')
  PreHourWind wind;

  @JsonKey(name: 'humidity')
  PreHourHumidity humidity;

  @JsonKey(name: 'pressure')
  PreHourPressure pressure;

  @JsonKey(name: 'visibility')
  PreHourVisibility visibility;

  @JsonKey(name: 'feelsLike')
  PreHourFeelsLike feelsLike;

  @JsonKey(name: 'aqi')
  PreHourAqi aqi;

  @JsonKey(name: 'uvIndex')
  String uvIndex;

  @JsonKey(name: 'weather')
  String weather;

  @JsonKey(name: 'temperature')
  PreHourTemperature temperature;

  PreHour(
    this.pubTime,
    this.wind,
    this.humidity,
    this.pressure,
    this.visibility,
    this.feelsLike,
    this.aqi,
    this.uvIndex,
    this.weather,
    this.temperature,
  );

  factory PreHour.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourFromJson(srcJson);
}

@JsonSerializable()
class PreHourWind extends Object {
  @JsonKey(name: 'speed')
  PreHourWindSpeed speed;

  @JsonKey(name: 'direction')
  PreHourWindDirection direction;

  PreHourWind(
    this.speed,
    this.direction,
  );

  factory PreHourWind.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourWindFromJson(srcJson);
}

@JsonSerializable()
class PreHourWindSpeed extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourWindSpeed(
    this.unit,
    this.value,
  );

  factory PreHourWindSpeed.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourWindSpeedFromJson(srcJson);
}

@JsonSerializable()
class PreHourWindDirection extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourWindDirection(
    this.unit,
    this.value,
  );

  factory PreHourWindDirection.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourWindDirectionFromJson(srcJson);
}

@JsonSerializable()
class PreHourHumidity extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourHumidity(
    this.unit,
    this.value,
  );

  factory PreHourHumidity.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourHumidityFromJson(srcJson);
}

@JsonSerializable()
class PreHourPressure extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourPressure(
    this.unit,
    this.value,
  );

  factory PreHourPressure.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourPressureFromJson(srcJson);
}

@JsonSerializable()
class PreHourVisibility extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourVisibility(
    this.unit,
    this.value,
  );

  factory PreHourVisibility.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourVisibilityFromJson(srcJson);
}

@JsonSerializable()
class PreHourFeelsLike extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourFeelsLike(
    this.unit,
    this.value,
  );

  factory PreHourFeelsLike.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourFeelsLikeFromJson(srcJson);
}

@JsonSerializable()
class PreHourAqi extends Object {
  @JsonKey(name: 'pubTime')
  String pubTime;

  @JsonKey(name: 'so2')
  String so2;

  @JsonKey(name: 'pm10Desc')
  String pm10Desc;

  @JsonKey(name: 'o3')
  String o3;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'no2Desc')
  String no2Desc;

  @JsonKey(name: 'suggest')
  String suggest;

  @JsonKey(name: 'so2Desc')
  String so2Desc;

  @JsonKey(name: 'co')
  String co;

  @JsonKey(name: 'o3Desc')
  String o3Desc;

  @JsonKey(name: 'no2')
  String no2;

  @JsonKey(name: 'primary')
  String primary;

  @JsonKey(name: 'aqi')
  String aqi;

  @JsonKey(name: 'coDesc')
  String coDesc;

  @JsonKey(name: 'pm10')
  String pm10;

  @JsonKey(name: 'pm25Desc')
  String pm25Desc;

  @JsonKey(name: 'pm25')
  String pm25;

  @JsonKey(name: 'src')
  String src;

  @JsonKey(name: 'brandInfo')
  PreHourAqiBrandInfo brandInfo;

  PreHourAqi(
    this.pubTime,
    this.so2,
    this.pm10Desc,
    this.o3,
    this.status,
    this.no2Desc,
    this.suggest,
    this.so2Desc,
    this.co,
    this.o3Desc,
    this.no2,
    this.primary,
    this.aqi,
    this.coDesc,
    this.pm10,
    this.pm25Desc,
    this.pm25,
    this.src,
    this.brandInfo,
  );

  factory PreHourAqi.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourAqiFromJson(srcJson);
}

@JsonSerializable()
class PreHourAqiBrandInfo extends Object {
  @JsonKey(name: 'brands')
  List<PreHourAqiBrandInfoBrands> brands;

  PreHourAqiBrandInfo(
    this.brands,
  );

  factory PreHourAqiBrandInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourAqiBrandInfoFromJson(srcJson);
}

@JsonSerializable()
class PreHourAqiBrandInfoBrands extends Object {
  @JsonKey(name: 'logo')
  String logo;

  @JsonKey(name: 'names')
  PreHourAqiBrandInfoBrandsNames names;

  @JsonKey(name: 'brandId')
  String brandId;

  @JsonKey(name: 'url')
  String url;

  PreHourAqiBrandInfoBrands(
    this.logo,
    this.names,
    this.brandId,
    this.url,
  );

  factory PreHourAqiBrandInfoBrands.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourAqiBrandInfoBrandsFromJson(srcJson);
}

@JsonSerializable()
class PreHourAqiBrandInfoBrandsNames extends Object {
  @JsonKey(name: 'zh_TW')
  String zhTW;

  @JsonKey(name: 'en_US')
  String enUS;

  @JsonKey(name: 'zh_CN')
  String zhCN;

  PreHourAqiBrandInfoBrandsNames(
    this.zhTW,
    this.enUS,
    this.zhCN,
  );

  factory PreHourAqiBrandInfoBrandsNames.fromJson(
          Map<String, dynamic> srcJson) =>
      _$PreHourAqiBrandInfoBrandsNamesFromJson(srcJson);
}

@JsonSerializable()
class PreHourTemperature extends Object {
  @JsonKey(name: 'unit')
  String unit;

  @JsonKey(name: 'value')
  String value;

  PreHourTemperature(
    this.unit,
    this.value,
  );

  factory PreHourTemperature.fromJson(Map<String, dynamic> srcJson) =>
      _$PreHourTemperatureFromJson(srcJson);
}

@JsonSerializable()
class Aqi extends Object {
  @JsonKey(name: 'status')
  int status;

  Aqi(
    this.status,
  );

  factory Aqi.fromJson(Map<String, dynamic> srcJson) => _$AqiFromJson(srcJson);
}
