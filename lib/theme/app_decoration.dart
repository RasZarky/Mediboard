import 'package:flutter/material.dart';
import 'package:mediboard/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber500,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan400,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink300,
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA100,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillRed500 => BoxDecoration(
        color: appTheme.red500,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0),
          end: const Alignment(0, 1),
          colors: [
            appTheme.blue30001,
            appTheme.blue700,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => const BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: appTheme.gray200,
        width: 1,
      ),
    ),
  );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => const BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1,
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray300 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray300,
          width: 1,
        ),
      );
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepPurpleA20001,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeeppurpleA20002 => BoxDecoration(
        color: appTheme.gray6004c,
      );
  static BoxDecoration get outlineDeeppurpleA20003 => BoxDecoration(
        color: appTheme.deepPurple50,
        border: Border.all(
          color: appTheme.deepPurpleA20003,
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineGray100011 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineGray100012 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineGray100013 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          left: BorderSide(
            color: appTheme.gray10001,
            width: 2,
          ),
        ),
      );
  static BoxDecoration get outlineGray100014 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray100015 => BoxDecoration(
        color: appTheme.gray50,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10001,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.indigo50,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineIndigo50 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.indigo50,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.red500,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1,
        ),
      );

  // Shadow decorations
  static BoxDecoration get shadow => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder1 => BorderRadius.circular(
        1,
      );
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30,
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => const BorderRadius.vertical(
        top: Radius.circular(24),
      );
  static BorderRadius get customBorderTL8 => const BorderRadius.vertical(
        top: Radius.circular(8),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    