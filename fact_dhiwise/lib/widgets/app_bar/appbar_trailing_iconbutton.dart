import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32.v,
          width: 33.h,
          decoration: IconButtonStyleHelper.gradientPurpleToRedA,
          child: CustomImageView(
            imagePath: ImageConstant.imgSearchWhiteA700,
          ),
        ),
      ),
    );
  }
}
