import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(fontFamily: 'Inter');
  }

  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }

  TextStyle get arimo {
    return copyWith(fontFamily: 'Arimo');
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // text style
  static TextStyle get onPrimaryContainer =>
      TextStyle(color: theme.colorScheme.onPrimaryContainer);
  // Body text style
  static TextStyle get bodyLargeArimoOnPrimary =>
      theme.textTheme.bodyLarge!.arimo.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static TextStyle get bodyMediumArimoOnPrimary =>
      theme.textTheme.bodyMedium!.arimo.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumOnPrimaryContainerExtraLight =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w200,
      );
  static TextStyle get bodyMediumPoppinsBluegray400 => theme
      .textTheme
      .bodyMedium!
      .poppins
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w400);
  static TextStyle get bodyMediumPoppinsOnPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodySmall10 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 10.fSize);
  static TextStyle get bodySmall10_1 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 10.fSize);
  static TextStyle get bodySmall8 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 8.fSize);
  static TextStyle get bodySmall8_1 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 8.fSize);
  static TextStyle get bodySmallBluegray90001 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodySmallBluegray90001Regular =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodySmallGray900cc =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray900CC);
  static TextStyle get bodySmallOnPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallPoppinsBluegray400 => theme
      .textTheme
      .bodySmall!
      .poppins
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w400);
  static TextStyle get bodySmall_1 => theme.textTheme.bodySmall!;
  // Inter text style
  static TextStyle get interBlack900 =>
      TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w800,
      ).inter;
  static TextStyle get interBlack900Bold =>
      TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static TextStyle get interBlack900Bold6 =>
      TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static TextStyle get interBlack900Light =>
      TextStyle(
        color: appTheme.black900,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w300,
      ).inter;
  static TextStyle get interBlack900Light6 =>
      TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w300,
      ).inter;
  static TextStyle get interOnPrimaryContainer =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 100.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static TextStyle get interOnPrimaryContainerBold =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static TextStyle get interOnPrimaryContainerExtraBold =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w800,
      ).inter;
  static TextStyle get interOnPrimaryContainerLight =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w300,
      ).inter;
  static TextStyle get interOnPrimaryContainerLight4 =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w300,
      ).inter;
  static TextStyle get interOnPrimaryContainerMedium =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static TextStyle get interOnPrimaryContainerSemiBold =>
      TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  // Label text style
  static TextStyle get labelLargeBluegray90001 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.blueGray90001, fontWeight: FontWeight.w600);
  static TextStyle get labelLargeBold =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeOnPrimaryContainer_1 => theme
      .textTheme
      .labelLarge!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get labelLargePoppins =>
      theme.textTheme.labelLarge!.poppins.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get labelLargePoppinsOnError => theme
      .textTheme
      .labelLarge!
      .poppins
      .copyWith(color: theme.colorScheme.onError);
  static TextStyle get labelLargePoppinsOnPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelLargeSemiBold =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get labelLargeSemiBold_1 =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get labelLargeSemiBold_2 =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get labelMediumBlack900 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumBlack900ExtraBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelMediumBlack900SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumDeeporangeA400 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumOnPrimaryContainerExtraBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelMediumTeal500 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.teaI500,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w800,
      );
  // Title text style
  static TextStyle get titleMedium18 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 18.fSize);
  static TextStyle get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get titleMediumBold18 => theme.textTheme.titleMedium!
      .copyWith(fontSize: 18.fSize, fontWeight: FontWeight.w700);
  static TextStyle get titleMediumMedium =>
      theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumOnPrimaryContainer_1 => theme
      .textTheme
      .titleMedium!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get titleMediumOnPrimaryContainer_2 => theme
      .textTheme
      .titleMedium!
      .copyWith(color: theme.colorScheme.onPrimaryContainer);
  static TextStyle get titleMediumPoppinsGray700 => theme
      .textTheme
      .titleMedium!
      .poppins
      .copyWith(color: appTheme.gray700, fontWeight: FontWeight.w500);
  static TextStyle get titleMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMedium_1 => theme.textTheme.titleMedium!;
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleSmallBlack900SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBluegray90001 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blueGray90001, fontWeight: FontWeight.w600);
  static TextStyle get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
}
