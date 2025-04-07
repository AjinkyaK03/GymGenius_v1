import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class KElevatedButtonTheme {
  KElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: KColors.light,
      backgroundColor: KColors.primary,
      disabledForegroundColor: KColors.darkGrey,
      disabledBackgroundColor: KColors.buttonDisabled,
      side: const BorderSide(color: KColors.primary),
      padding: const EdgeInsets.symmetric(vertical: KSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: KColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: KColors.light,
      backgroundColor: KColors.primary,
      disabledForegroundColor: KColors.darkGrey,
      disabledBackgroundColor: KColors.darkerGrey,
      side: const BorderSide(color: KColors.primary),
      padding: const EdgeInsets.symmetric(vertical: KSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: KColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(KSizes.buttonRadius),
      ),
    ),
  );
}
