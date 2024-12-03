import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static final PrefUtils _instance = PrefUtils._internal();

  factory PrefUtils() {
    return _instance;
  }

  PrefUtils._internal();

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  Future<void> setThemeData(String themeType) async {
    await _sharedPreferences?.setString('themeType', themeType);
  }

  String getThemeData() {
    return _sharedPreferences?.getString('themeType') ?? 'default_theme';
  }
}
