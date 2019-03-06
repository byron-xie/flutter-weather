import 'package:dio/dio.dart';
import 'package:weather/bean/weather_root_info.dart';

class CurrentCityData {
  static CurrentCityData cityData;
  factory CurrentCityData() => getInstance();
  static CurrentCityData get instance => getInstance();

  CurrentCityData._internal() {
    // 初始化
  }

  static CurrentCityData getInstance({String a}) {
    if (cityData == null) {
      cityData = new CurrentCityData._internal();
    }
    print("CityNumber:  getInstance" + cityNum);
    print("CityNumber:  getInstance longitude" + longitude);
    print("CityNumber:  getInstance latitude" + latitude);
    return cityData;
  }

  static String cityNum = "101150401";
  static String latitude = "";
  static String longitude = "";
  static String cityName = "112";
  String getCurrentCityNum() {
    return "cityNum:$cityNum" + "longitude:$longitude" + "latitude$latitude";
  }

  void setCityParameters(String cityNa, String longitu, String latitu) {
    cityName = cityNa;
    longitude = longitu;
    latitude = latitu;
  }

  void setCityNumber(String num) {
    print("CityNumber:  setCityNumber" + num.toString());
    cityNum = num;
  }

  Future<weather_root_info> getWeatherData() async {
    print("CityNumber:  getWeatherData" + cityNum);
    print("CityNumber:  getWeatherData longitude" + longitude);
    print("CityNumber:  getWeatherData latitude" + latitude);
    Dio dio = new Dio();
    Response response = await dio.get(getCurrentURL());
    if (response.statusCode == 200) {
      weather_root_info weatherInfo = weather_root_info.fromJson(response.data);
      print("weatherInfo content is :" + weatherInfo.toString());
      return weatherInfo;
    }
    return null;
  }

  String getCurrentURL() {
    return "https://weatherapi.market.xiaomi.com/wtr-v3/weather/all?latitude=$latitude&longitude=$longitude&isLocated=true&locationKey=weathercn%3A$cityNum&days=15&appKey=weather20151024&sign=zUFJoAR2ZVrDy1vF3D07&romVersion=7.2.16&appVersion=87&alpha=false&isGlobal=false&device=cancro&modDevice=&locale=zh_cn";
  }

//  void _checkPermission(BuildContext context) async{
//    bool hasPermission = await SimplePermissions.checkPermission(Permission.WhenInUseLocation);
//    if(!hasPermission){
//      PermissionStatus requestPermissionResult = await SimplePermissions.requestPermission(Permission.WhenInUseLocation);
//      if(requestPermissionResult != PermissionStatus.authorized){
//        Alert.alert(context,title: "申请定位权限失败");
//        return;
//      }
//    }
//    AMapLocationClient.onLocationUpate.listen((AMapLocation loc) {
//      if (!mounted) return;
//      AMapLocationClient.stopLocation();
//        print("cityLocation:"+loc.toString());
//    });
//
//    AMapLocationClient.startLocation();
//  }
  String getCurrentWeek(String date) {
    date = date.replaceFirst("T", " ").split("+")[0];
    DateTime dateTime = DateTime.parse(date);
    String weakDay = "";
    switch (dateTime.weekday) {
      case 1:
        weakDay = "星期一";
        break;
      case 2:
        weakDay = "星期二";

        break;
      case 3:
        weakDay = "星期三";

        break;
      case 4:
        weakDay = "星期四";

        break;
      case 5:
        weakDay = "星期五";

        break;
      case 6:
        weakDay = "星期六";

        break;
      case 7:
        weakDay = "星期日";

        break;
    }
    return weakDay;
  }

  String getSunRiseSetTime(String date) {
    date = date.replaceFirst("T", " ").split("+")[0];
    DateTime dateTime = DateTime.parse(date);
    dateTime.millisecond;
    String hours = "${dateTime.hour}" +
        ':' +
        "${dateTime.second}" +
        ':' +
        "${dateTime.minute}";

    return hours;
  }

  String getCurrentTime(String date, int index) {
    date = date.replaceFirst("T", " ").split("+")[0];
    DateTime dateTime = DateTime.parse(date);
    print("dateTime:" + "${dateTime.hour + index + 1}");
    int hours = dateTime.hour + index + 1;
    if (hours >= 24) {
      hours = hours - 24;
    }
    return "$hours" + ":00";
//  String weakDay = "";
//  switch (dateTime.weekday) {
//    case 1:
//      weakDay = "星期一";
//      break;
//    case 2:
//      weakDay = "星期二";
//
//      break;
//    case 3:
//      weakDay = "星期三";
//
//      break;
//    case 4:
//      weakDay = "星期四";
//
//      break;
//    case 5:
//      weakDay = "星期五";
//
//      break;
//    case 6:
//      weakDay = "星期六";
//
//      break;
//    case 7:
//      weakDay = "星期日";
//
//      break;
//  }
  }
}

const Map<String, String> WeatherChinese = {
  '0': '大部天晴',
  '1': '多云',
  '2': '阴',
  '3': '阵雨',
  '4': '雷阵雨',
  '5': '雷阵雨并伴有冰雹',
  '6': '雨夹雪',
  '7': '小雨',
  '8': '中雨',
  '9': '大雨',
  '10': '暴雨',
  '11': '大暴雨',
  '12': '特大暴雨',
  '13': '阵雪',
  '14': '小雪',
  '15': '中雪',
  '16': '大雪',
  '17': '暴雪',
  '18': '雾',
  '19': '冻雨',
  '20': '沙尘暴',
  '21': '小雨-中雨',
  '22': '中雨-大雨',
  '23': '大雨-暴雨',
  '24': '暴雨-大暴雨',
  '25': '大暴雨-特大暴雨',
  '26': '小雪-中雪',
  '27': '中雪-大雪',
  '28': '大雪-暴雪',
  '29': '浮沉',
  '30': '扬沙',
  '31': '强沙尘暴',
  '32': '飑',
  '33': '龙卷风',
  '34': '若高吹雪',
  '35': '轻雾',
  '53': '霾',
  '99': '未知',
};

void setCityParameters([String cityNa, String cityNadas]) {
  setCityParameters1(cityNa: "das");
}

void setCityParameters1({String cityNa, String cityNaa}) {
  setCityParameters("", "dsa");
}
