import 'package:amap_location/amap_location.dart';
import 'package:easy_alert/easy_alert.dart';
import 'package:flutter/material.dart';
import 'package:simple_permissions/simple_permissions.dart';
import 'package:weather/bean/weather_root_info.dart';
import 'package:weather/http.dart';

import 'query_database.dart';

void main() {
//  AMapLocationClient.setApiKey("a5bae506b2d053ed4ae7827f38b1766d");
  runApp(new MyApp());
}

TodoProvider todoProvider = new TodoProvider();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '24小时天气',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the xconsole where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<MyHomePage> {
  weather_root_info weather;
  CurrentCityData cityData;
  bool isGetLocation = false;
  bool isSplash = false;

  @override
  void initState() {
    AMapLocationClient.startup(new AMapLocationOption(
        desiredAccuracy: CLLocationAccuracy.kCLLocationAccuracyHundredMeters));
//    _checkPersmission();
    // TODO: implement initState
    _checkPermission();

    super.initState();
  }

  void _checkPermission() async {
    isSplash = await todoProvider.open();
    if (isSplash) {
      setState(() {
        isSplash = true;
      });
    } else {
      _checkPermission();
    }
  }

  voidCallback() {
    setState(() {
      isGetLocation = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    if (!isSplash) {
      return Material(
        child: Stack(
          children: <Widget>[
            Image.asset("images/weather.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: double.maxFinite),
            Container(
              color: Colors.red,
              child: Text(
                "请打开GPS",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              width: double.maxFinite,
              height: 23,
            )
          ],
        ),
      );
    }

    return isGetLocation
        ? FutureBuilder(
            future: CurrentCityData.getInstance().getWeatherData(),
            builder: (BuildContext context, AsyncSnapshot async) {
              if (async.connectionState == ConnectionState.waiting) {
                return Material(
                  child: Stack(
                    children: <Widget>[
                      Image.asset("images/weather.png",
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                          height: double.maxFinite),
                      Container(
                        color: Colors.blue,
                        child: Text(
                          "正在定位...更新天气...",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        width: double.maxFinite,
                        height: 23,
                      )
                    ],
                  ),
                );
                ;
              }
              cityData = CurrentCityData.getInstance();
              weather = async.data as weather_root_info;
              cityData.getCurrentWeek(weather.forecastDaily.pubTime);
              return SafeArea(
                  child: Scaffold(
                backgroundColor: Colors.black45,
                body: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        child: LocationGet(null),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "当前：" + "${WeatherChinese[weather.current.weather]}",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "fZCOOLKuaiLe",
                              fontStyle: FontStyle.normal,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: Text(
                          weather.current.temperature.value,
                          style: TextStyle(
                              fontSize: 105,
                              fontFamily: "Charm-Regular",
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          "日出:" +
                              cityData.getSunRiseSetTime(weather
                                  .forecastDaily.sunRiseSet.value[0].from) +
                              "   日落:" +
                              cityData.getSunRiseSetTime(
                                  weather.forecastDaily.sunRiseSet.value[0].to),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
//                  fontFamily: "fZCOOLKuaiLe",
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: new Row(
                          children: [
                            Padding(
                              padding: new EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                cityData
                                    .getCurrentWeek(weather.current.pubTime),
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontFamily: "fZCOOLKuaiLe"),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "今天",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "fZCOOLKuaiLe"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                  weather.forecastDaily.temperature.value.first
                                      .from,
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "Charm-Regular",
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                  weather
                                      .forecastDaily.temperature.value.first.to,
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontFamily: "Charm-Regular",
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints(
                              minWidth: double.infinity,
                              minHeight: 120,
                              maxWidth: double.infinity,
                              maxHeight: 120),
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15, top: 5, bottom: 15),
                                    child: Text(
                                      cityData.getCurrentTime(
                                          weather.current.pubTime, index),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: "fZCOOLKuaiLe"),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, bottom: 18),
                                    child: Text(
                                      getWeatherChinese(weather.current.weather,
                                          "${weather.forecastHourly.weather.value[index]}"),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: "fZCOOLKuaiLe"),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, bottom: 12),
                                    child: Text(
                                      "${weather.forecastHourly.temperature.value[index]}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: "fZCOOLKuaiLe"),
                                    ),
                                  )
                                ],
                              );
                            },
                            itemCount:
                                weather.forecastHourly.weather.value.length,
                            scrollDirection: Axis.horizontal,
                          )),
                      Expanded(
                        child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              index += 1;

                              return Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      cityData.getCurrentWeek(weather
                                          .forecastDaily
                                          .sunRiseSet
                                          .value[index]
                                          .from),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: "fZCOOLKuaiLe"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      getWeatherChinese(
                                          weather.forecastDaily.weather
                                              .value[index].from,
                                          weather.forecastDaily.weather
                                              .value[index].to),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "fZCOOLKuaiLe"),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                    weather.forecastDaily.temperature
                                        .value[index].from,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Charm-Regular"),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    child: Text(
                                      weather.forecastDaily.temperature
                                          .value[index].to,
                                      style: TextStyle(
                                          fontFamily: "Charm-Regular",
                                          color: Colors.grey,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              );

//                    return Text(
//
//                          ++"  "+
//
//                         ,
//                      style: TextStyle(color: Colors.orangeAccent,fontSize: 50),);
                            },
                            itemCount:
                                weather.forecastDaily.weather.value.length - 1,
                            scrollDirection: Axis.vertical),
                      )
                    ],
                  ),
                ),
                // This trailing comma makes auto-formatting nicer for build methods.
              ));
            },
          )
        : LocationGet(voidCallback);
  }

  String getWeatherChinese(String from, String to) {
    print("from:" + from);
    print("to:" + to);
    if (from == to) {
      return WeatherChinese[to];
    } else {
      return WeatherChinese[from] + "转" + WeatherChinese[to];
    }
  }

  void _checkPersmission() async {
    bool hasPermission =
        await SimplePermissions.checkPermission(Permission.WhenInUseLocation);
    if (!hasPermission) {
      PermissionStatus requestPermissionResult =
          await SimplePermissions.requestPermission(
              Permission.WhenInUseLocation);
      if (requestPermissionResult != PermissionStatus.authorized) {
        Alert.alert(context, title: "申请定位权限失败");
        return;
      }
    }
    AMapLocation loc = await AMapLocationClient.getLocation(true);
    print("_checkPersmission:" + loc.citycode);
    print("_checkPersmission:" + loc.city);
    print("_checkPersmission:" + loc.city);
    print("_checkPersmission:" + loc.formattedAddress);
  }
}

class LocationGet extends StatefulWidget {
  VoidCallback voidCallback;

  @override
  State<StatefulWidget> createState() =>
      new _LocationGetState(this.voidCallback);

  LocationGet(this.voidCallback);
}

class _LocationGetState extends State {
  AMapLocation _loc;
  VoidCallback voidCallback;

  _LocationGetState(this.voidCallback);

  @override
  Widget build(BuildContext context) {
    if (voidCallback != null) {
      return Material(
        child: Stack(
          children: <Widget>[
            Image.asset("images/weather.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: double.maxFinite),
            Container(
              color: Colors.red,
              child: Text(
                "请确保GPS可用",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              width: double.maxFinite,
              height: 23,
            )
          ],
        ),
      );
    }
    return new Center(
      child: _loc == null
          ? Text(
              "正在定位",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontFamily: "fZCOOLKuaiLe",
                  color: Colors.white),
            )
          : Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: showUrl,
                    child: Text("${_loc.city}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontFamily: "fZCOOLKuaiLe",
                            color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Text(
                    "${_loc.district}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontFamily: "fZCOOLKuaiLe",
                        color: Colors.white),
                  ),
                )
              ],
            ),
    );
  }

  void showUrl() {
//    Navigator.push(context, new MaterialPageRoute<void>(
//      builder: (BuildContext context) {
//        return new Scaffold(
//          appBar: new AppBar(title: new Text('My Page')),
//          body: new Center(
//            child: new FlatButton(
//              child: new Text(CurrentCityData.instance.getCurrentURL()),
//              onPressed: () {
//                Navigator.pop(context);
//              },
//            ),
//          ),
//        );
//      },
//    ));
  }

  bool isInValid(AMapLocation location) {
    return location == null ||
        location.city == null ||
        location.city.isEmpty ||
        location.district.isEmpty ||
        location.district == null;
  }

  void _checkPermission() async {
    bool hasPermission =
        await SimplePermissions.checkPermission(Permission.WhenInUseLocation);
    if (!hasPermission) {
      PermissionStatus requestPermissionResult =
          await SimplePermissions.requestPermission(
              Permission.WhenInUseLocation);
      if (requestPermissionResult != PermissionStatus.authorized) {
        Alert.alert(context, title: "申请定位权限失败");
        return;
      }
    }
    _loc = await AMapLocationClient.getLocation(true);
    if (isInValid(_loc)) {
      AMapLocationClient.onLocationUpate.listen((AMapLocation locc) {
        if (!mounted) return;
        if (isInValid(locc)) {
          return;
        }
        AMapLocationClient.stopLocation();

        if (!isInValid(_loc)) {
          AMapLocationClient.stopLocation();
          return;
        }
        _loc = locc;
        gotoSetState();
      });
      var _duration = new Duration(seconds: 1);
      new Future.delayed(_duration, gotoSetState);
      AMapLocationClient.startLocation();
    } else {
      print("aMapLocationaMapLocationaMapLocationaMapLocation:" +
          _loc.formattedAddress);
      var _duration = new Duration(seconds: 1);
      new Future.delayed(_duration, gotoSetState);
    }
  }

  void gotoSetState() {
    setState(() {
      Future<String> future = todoProvider.getCityId(_loc.city, _loc.district);
      future.then((res) {
        if (res == null) {
          throw Exception("city number is null");
        }
        CurrentCityData.getInstance().setCityNumber(res);
        CurrentCityData.getInstance().setCityParameters(
            _loc.city, "${_loc.longitude}", "${_loc.latitude}");
        if (voidCallback != null) {
          voidCallback();
        }
      });
    });
  }

  @override
  void initState() {
    _checkPermission();
    super.initState();
  }

  @override
  void dispose() {
    //这里可以停止定位
    AMapLocationClient.stopLocation();

    super.dispose();
  }
}
