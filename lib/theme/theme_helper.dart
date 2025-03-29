import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  // Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: colorScheme.onErrorContainer,
          side: BorderSide(color: appTheme.black900, width: 1.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.black900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          shadowColor: appTheme.black900.withValues(alpha: 0.25),
          elevation: 4,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray100,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle(
      color: appTheme.black900,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    headlineMedium: TextStyle(
      color: appTheme.blueGray90001,
      fontSize: 28.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.primaryContainer,
      fontSize: 24.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: colorScheme.onErrorContainer,
      fontSize: 10.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      color: appTheme.black900,
      fontSize: 8.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 20.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    titleMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: appTheme.blueGray100,
      fontSize: 15.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF00A66C),
    primaryContainer: Color(0XFF222222),
    secondaryContainer: Color(0XFF4086F4),
    errorContainer: Color(0XFF882727),
    onError: Color(0XFF376AED),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0X330F0D23),
    onPrimaryContainer: Color(0XFFC4C4C4),
  );
}

// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFCFCFCF);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF14304A);
  Color get blueGray90001 => Color(0XFF13304A);

  // Cyan
  Color get cyan400 => Color(0XFF21BDCA);

  // DeepOrange
  Color get deepOrangeA400 => Color(0XFFF03800);

  // Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray10002 => Color(0XFFF3F3F3);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray700 => Color(0XFF636363);
  Color get gray800 => Color(0XFF444444);
  Color get gray900CC => Color(0XCC262626);

  // Green
  Color get green400 => Color(0XFF59C36A);

  // Indigo
  Color get indigo600 => Color(0XFF282BD0);

  // Red
  Color get red200 => Color(0XFFE99C9C);

  // Yellow
  Color get yellow600 => Color(0XFFFFDA2D);
  Color get yellow900 => Color(0XFFFF7F23);

  get teaI500 => null;
}
