import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskora/core/constants/lang_constants.dart';
import 'package:taskora/core/utils/language_manager.dart';
import 'package:taskora/core/utils/logger.dart';

class CacheHelper {
  static const _secureStorage = FlutterSecureStorage();
  static SharedPreferences? _prefs;

  static Future<void> _initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // =====================
  // Shared Preferences
  // =====================
  static Future<void> setData(String key, dynamic value) async {
    await _initPrefs();
    debugPrint('CacheHelper: setData with key: $key & value: $value');

    if (_prefs == null) return;

    if (value is String) {
      await _prefs!.setString(key, value);
    } else if (value is int) {
      await _prefs!.setInt(key, value);
    } else if (value is double) {
      await _prefs!.setDouble(key, value);
    } else if (value is bool) {
      await _prefs!.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs!.setStringList(key, value);
    } else if (value is List<int>) {
      await _prefs!.setStringList(key, value.map((e) => e.toString()).toList());
    } else {
      debugPrint('CacheHelper: Unsupported type for key: $key');
    }
  }

  static Future<Object?> getData(String key) async {
    await _initPrefs();
    final value = _prefs?.get(key);
    debugPrint('CacheHelper: getData with key: $key & value: $value');
    return value;
  }

  static Future<List<int>> getIntList(String key) async {
    await _initPrefs();
    final list = _prefs?.getStringList(key);
    return list?.map(int.parse).toList() ?? [];
  }

  // =====================
  // Lang Methods
  // =====================
  static Future<String> getAppLang() async {
    await _initPrefs();
    final language = _prefs?.getString(LangConstants.prefsLangKey);
    return language?.isNotEmpty == true
        ? language!
        : LanguageType.ENGLISH.getValue();
  }

  static Future<Locale> getAppLocale() async {
    final currentLang = await getAppLang();
    return currentLang == LanguageType.ARABIC.getValue()
        ? ARABIC_LOCAL
        : ENGLISH_LOCAL;
  }

  static Future<void> changeAppLang(String currentLang) async {
    await _initPrefs();
    if (currentLang != LanguageType.ARABIC.getValue()) {
      _prefs?.setString(
        LangConstants.prefsLangKey,
        LanguageType.ENGLISH.getValue(),
      );
    } else {
      _prefs?.setString(
        LangConstants.prefsLangKey,
        LanguageType.ARABIC.getValue(),
      );
    }
  }

  static Future<bool> clearData() async {
    await _initPrefs();
    logI('CacheHelper: clearData');
    return _prefs?.clear() ?? Future.value(false);
  }

  static Future<bool> removeData(String key) async {
    await _initPrefs();
    logI('CacheHelper: removeData with key: $key');
    return _prefs?.remove(key) ?? Future.value(false);
  }

  // =====================
  // Secure Storage
  // =====================
  static Future<void> setSecuredString(String key, String value) async {
    logI('FlutterSecureStorage: setSecuredString with key: $key, $value');
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> getSecuredString(String key) async {
    logI('FlutterSecureStorage: getSecuredString with key: $key');
    return _secureStorage.read(key: key);
  }

  static Future<void> clearAllSecuredData() async {
    logI('FlutterSecureStorage: all data cleared');
    await _secureStorage.deleteAll();
  }

  static Future<void> removeSecuredData(String key) async {
    logI('FlutterSecureStorage: removedSecureString with key: $key');
    await _secureStorage.delete(key: key);
  }
}
