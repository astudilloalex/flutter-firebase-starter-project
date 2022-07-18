import 'package:flutter/material.dart';
import 'package:flutter_firebase_starter_project/src/ui/theme/colors.dart';

/// Manage the theme of the app.
class AppThemeData {
  const AppThemeData._();

  /// Returns the dark theme.
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      primaryColor: DarkColors.primary,
    );
  }

  /// Returns the light theme.
  static ThemeData get light {
    return ThemeData.light().copyWith(
      primaryColor: LightColors.primary,
    );
  }
}
