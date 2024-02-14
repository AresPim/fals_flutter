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
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumPrimaryContainer13 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimaryContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoBlack90002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumff4e4b66 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF4E4B66),
        fontSize: 13.fSize,
      );
  static get bodyMediumff4e4b66_1 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF4E4B66),
      );
  static get bodyMediumffc20052 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFC20052),
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmall_2 => theme.textTheme.bodySmall!;
  // Display text style
  static get displayMediumPolyWhiteA700 =>
      theme.textTheme.displayMedium!.poly.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
      );
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
      );
  // Headline style
  static get headlineLargeArial => theme.textTheme.headlineLarge!.arial;
  static get headlineLargeBlack90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get headlineSmallBluegray300 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  // Label text style
  static get labelLargeNunitoPrimary =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProDisplayGray40001 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.gray40001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPurple30000 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.purple30000,
        fontWeight: FontWeight.w700,
      );
  // Poly text style
  static get polyPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 150.fSize,
        fontWeight: FontWeight.w400,
      ).poly;
  // Post text style
  static get postNoBillsColomboExtraBoldWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 70.fSize,
        fontWeight: FontWeight.w800,
      ).postNoBillsColomboExtraBold;
  // Title text style
  static get titleLargeAbhayaLibreExtraBoldPink10000 =>
      theme.textTheme.titleLarge!.abhayaLibreExtraBold.copyWith(
        color: appTheme.pink10000,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeBlack90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get titleLargeBlack90002Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeNunitoPrimary =>
      theme.textTheme.titleLarge!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90002_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumffff0000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFF0000),
        fontWeight: FontWeight.w900,
      );
  static get titleSmallNunitoGray600 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallNunitoGray800 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallNunitoGray90001 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsff73069a =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFF73069A),
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

  TextStyle get archivo {
    return copyWith(
      fontFamily: 'Archivo',
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

  TextStyle get pollerOne {
    return copyWith(
      fontFamily: 'Poller One',
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

  TextStyle get postNoBillsColomboExtraBold {
    return copyWith(
      fontFamily: 'Post No Bills Colombo ExtraBold',
    );
  }

  TextStyle get poly {
    return copyWith(
      fontFamily: 'Poly',
    );
  }
}
