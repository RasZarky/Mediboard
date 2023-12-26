import 'package:flutter/material.dart';
import 'package:mediboard/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAbelBlack900 => theme.textTheme.bodyLarge!.abel.copyWith(
        color: appTheme.black900,
        fontSize: 17,
      );
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray30001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumBluegray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumCyan700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyan700,
      );
  static get bodyMediumDeeppurpleA20003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurpleA20003,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray600,
  );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray6000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 15,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 15,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumLightgreen700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightGreen700,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumSFProBlack900 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.black900,
        fontSize: 15,
      );
  static get bodyMediumSFProGray800 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.gray800,
        fontSize: 13,
      );
  static get bodyMediumSFProTextGray500 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.gray500,
        fontSize: 13,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 15,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12,
      );
  static get bodySmallInterIndigoA200 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.indigoA200,
        fontSize: 12,
      );
  static get bodyMediumOnPrimary15 => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.onPrimary.withOpacity(1),
    fontSize: 15,
  );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
    fontSize: 18,
  );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDeeppurpleA20003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA20003,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGray90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 15,
      );
  static get titleSmallGray900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 15,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900Bold_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray900Medium_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreen700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOrange800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.orange800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProBlack900 =>
      theme.textTheme.titleSmall!.sFPro.copyWith(
        color: appTheme.black900,
        fontSize: 15,
      );
  static get titleSmallSFProTextBlack900 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 15,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallSemiBold14 => theme.textTheme.titleSmall!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}

extension on TextStyle {
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get abel {
    return copyWith(
      fontFamily: 'Abel',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }
}
