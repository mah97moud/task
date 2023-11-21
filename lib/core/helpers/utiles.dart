
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';

class Utils {

  Utils._();
   static Future<String> get deviceId async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final deviceInfo = await deviceInfoPlugin.androidInfo;
      return deviceInfo.serialNumber;
    } else if (Platform.isIOS) {
      final deviceInfo = await deviceInfoPlugin.iosInfo;
      return deviceInfo.identifierForVendor ?? '';
    } else {
      return '';
    }
  }

 static Future<PersistCookieJar> prepareJar() async {
  final Directory appDocDir = await getApplicationDocumentsDirectory();
  final String appDocPath = appDocDir.path;
   return PersistCookieJar(
    ignoreExpires: true,
    storage: FileStorage("$appDocPath/.cookies/"),
  );

}
}