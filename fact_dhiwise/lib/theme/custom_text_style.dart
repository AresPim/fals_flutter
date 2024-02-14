import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeArial => theme.textTheme.bodyLarge!.arial;
  static get bodyLargeArialBluegray700 =>
      theme.textTheme.bodyLarge!.arial.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeArialBluegray700_1 =>
      theme.textTheme.bodyLarge!.arial.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeBluegray30001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeManropeBluegray600 =>
      theme.textTheme.bodyLarge!.manrope.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumBluegray30001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumInterBluegray300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPurple800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.purple800,
      );
  static get bodyMediumRobotoBlack90002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumSFProRoundedBluegray90001 =>
      theme.textTheme.bodyMedium!.sFProRounded.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumff4e4b66 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF4E4B66),
      );
  static get bodyMediumffc20052 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFC20052),
      );
  static get bodySmallPoppinsDeeporangeA40000 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepOrangeA40000,
        fontSize: 8.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmall_2 => theme.textTheme.bodySmall!;
  // Headline style
  static get headlineLargeArial => theme.textTheme.headlineLarge!.arial;
  static get headlineLargeBlack90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get headlineSmallBluegray30001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  // Label text style
  static get labelLargeNunitoBluegray90001 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.5),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeNunitoGray80001 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeNunitoWhiteA700 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProDisplayGray40001 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.gray40001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsPurple30000 => TextStyle(
        color: appTheme.purple30000,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargeAbhayaLibreExtraBoldPurple30000 =>
      theme.textTheme.titleLarge!.abhayaLibreExtraBold.copyWith(
        color: appTheme.purple30000,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumInterBluegray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallArchivoWhiteA700 =>
      theme.textTheme.titleSmall!.archivo.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallManropeBlack90002 =>
      theme.textTheme.titleSmall!.manrope.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMontserratBlack90002 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoGray900 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsff84069a =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFF84069A),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get archivo {
    return copyWith(
      fontFamily: 'Archivo',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFProRounded {
    return copyWith(
      fontFamily: 'SF Pro Rounded',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get abhayaLibreExtraBold {
    return copyWith(
      fontFamily: 'Abhaya Libre ExtraBold',
    );
  }
}
