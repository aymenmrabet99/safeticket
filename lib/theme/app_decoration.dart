import 'package:flutter/material.dart';
import '/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(color: appTheme.black900);
  static BoxDecoration get fillBlack900 => BoxDecoration(
    color: appTheme.black900.withValues(
      alpha: 0.8, // Fixed: Replaced withOpacity with withValues
    ),
  );
  static BoxDecoration get fillBlueGray =>
      BoxDecoration(color: appTheme.blueGray10001);
  static BoxDecoration get fillIndigo =>
      BoxDecoration(color: appTheme.indigo600);
  static BoxDecoration get fillOnErrorContainer =>
      BoxDecoration(color: theme.colorScheme.onErrorContainer);

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlinedblack900 => BoxDecoration(
    color: theme.colorScheme.errorContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlinedblack9001 => BoxDecoration(
    color: appTheme.black900,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9002 => BoxDecoration(
    color: appTheme.gray10001,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9003 => BoxDecoration(
    color: appTheme.gray10002,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9004 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    border: Border.all(color: appTheme.black900, width: 1.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9005 => BoxDecoration(
    color: appTheme.gray50,
    border: Border.all(color: appTheme.black900, width: 1.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25, // Fixed: Replaced withOpacity with withValues
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9006 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    border: Border.all(color: appTheme.black900, width: 1.h),
  );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder18 => BorderRadius.circular(10.h);
  static BorderRadius get roundedBorder6 => BorderRadius.circular(6.h);
}
