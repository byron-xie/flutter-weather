import 'dart:collection';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/src/sqflite_impl.dart';

class TodoProvider {
  Database db;

  Future<bool> open() async {
//    String path = await getDatabasesPath();
//    print("path:"+path);
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'weather.db');
    File file = File(path);
    bool isExits = await file.exists();
    if (!isExits) {
      ByteData byteData = await rootBundle.load(join('assets', 'weather.db'));
      List<int> data = byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      await file.writeAsBytes(data);
    }
    db = await openDatabase(path);
    print("path:" + db.toString());
    print("path:" + "${db.isOpen}");
    return db.isOpen;
  }

  Future<String> getCityId(String cityName, String district) async {
    if (cityName.contains('市')) {
      cityName = cityName.replaceAll('市', '');
    }
    if (district.contains('区')) {
      district = district.replaceAll('区', '');
    }
    print("citys:  db ${db != null}");
    print("citys:  db.isOpen ${db.isOpen}");
    if (db != null && db.isOpen) {
      if (district.length >= 2) {
        district = district.substring(0, 2);
      }
      String key = "'" + '%' + cityName + "." + district + '%' + "'";
      ListBase<Map<String, dynamic>> citys = await db
          .rawQuery('SELECT city_num,name FROM citys WHERE name like ' + key);
      QueryRow value;
      if (citys.length != 0) {
        value = citys.first;
      }
      if (value == null) {
        String tempCityName = "'" + cityName + "'";
        ListBase<Map<String, dynamic>> citys = await db.rawQuery(
            'SELECT city_num,name FROM citys WHERE name = $tempCityName');
        value = citys.first;
      }

      if (value == null) {
        key = "'" + '%' + cityName + '%' + "'";
        ListBase<Map<String, dynamic>> citys = await db
            .rawQuery('SELECT city_num,name FROM citys WHERE name like ' + key);
        value = citys.first;
      }
      if (value == null) {
        print("citys: value  is null ");
        return "101010100";
      }
      print("citys: value" + value.toString());
      print("citys:  numbernumbernumbernumber" + "${value['city_num']}");
      citys.map((re) {
        print("citys:  raaaaaaaaaaaaaaaae" + re.toString());
      });
      print("citys:" + citys.toString());
      return value['city_num'];
    }
    return null;
  }
}
