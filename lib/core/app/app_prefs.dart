import 'cache_helper.dart';

const String prefsKeyLanguage = 'prefsKeyLanguage';
const String prefsKeyDeviceId = 'prefsKeyDeviceId';
const String prefsKeyToken = 'prefsKeyToken';
 
String? token;
class AppPreferences {
  AppPreferences({
    required CacheImpl cacheImpl,
  }) : _cacheImpl = cacheImpl;

  final CacheImpl _cacheImpl;

  Future<String?> get getToken async {
    final String? token = await _cacheImpl.getString(prefsKeyToken) as String?;
    if (token != null && token.isNotEmpty) {
      return token;
    } else {
      return null;
    }
  }

  Future<bool?> saveToken(String value) async {
    return await _cacheImpl.put(prefsKeyToken, value);
  }
}
