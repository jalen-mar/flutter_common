import 'package:flutter_common/src/Storage.dart';
import 'package:get_it/get_it.dart';

class CommonConfig {
  static Future<Null> init(Map data) async {
    var storage = await Storage.get();
    data.forEach((key, value) {
      if (value is String) {
        storage.setString(key, value);
      } else if (value is int) {
        storage.setInt(key, value);
      } else if (value is double) {
        storage.setDouble(key, value);
      }
    });
    GetIt.I.registerSingleton<Storage>(storage);
    return ;
  }
}