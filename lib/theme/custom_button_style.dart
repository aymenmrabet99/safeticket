import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillBlackTL10 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillBlackTL5 => ElevatedButton.styleFrom(
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

  static ButtonStyle get fillGrayTL10 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray800,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onErrorContainer,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillRed => ElevatedButton.styleFrom(
    backgroundColor: appTheme.red200,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get fillRedTL28 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.red200,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlackTL10 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onErrorContainer,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlackTL5 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get outlineBlackTL51 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h)),
    shadowColor: appTheme.black900.withValues(alpha: 0.25),
    elevation: 4,
    padding: EdgeInsets.zero,
  );
  // text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    elevation: WidgetStateProperty.all<double>(0),
    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: WidgetStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ),
  );
}
