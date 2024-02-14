import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToRedADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.07, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA10001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedATL16Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.07, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA10001,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineTL6 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
