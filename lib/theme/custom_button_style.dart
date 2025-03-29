import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A Class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  /// Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillBlackTl9 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillBlackTl5 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillCyan => ElevatedButton.styleFrom(
    backgroundColor: appTheme.cyan400,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray10001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTl10 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray800,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimaryContainer,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillPrimaryTl18 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.teaI500,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineBlackTl10 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimaryContainer,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlackTl5 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.teaI500,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlackTl51 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  /// text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: WidgetStateProperty.all(Colors.transparent),
    elevation: WidgetStateProperty.all(0),
    padding: WidgetStateProperty.all(EdgeInsets.zero),
    side: WidgetStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ),
  );
}
