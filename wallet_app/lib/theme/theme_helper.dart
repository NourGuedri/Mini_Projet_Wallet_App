import 'package:flutter/material.dart';
import 'package:wallet_app/core/app_export.dart';

ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
// The current app theme
  var _appTheme = PrefUtils().getThemeData();

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    return ThemeData(
      visualDensity: VisualDensity.standard,
    );
  }

  ThemeData themeData() => _getThemeData();
}
