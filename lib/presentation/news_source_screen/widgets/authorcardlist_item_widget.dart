import '../models/authorcardlist_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class AuthorcardlistItemWidget extends StatelessWidget {
  AuthorcardlistItemWidget(
    this.authorcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AuthorcardlistItemModel authorcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 113.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 84.v,
            width: 96.h,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: authorcardlistItemModelObj?.userImage,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Text(
            authorcardlistItemModelObj.bBCNews!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 7.v),
          Container(
            width: 97.h,
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0, 0),
                end: Alignment(1.07, 1.65),
                colors: [
                  theme.colorScheme.primary,
                  appTheme.redA10001,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 3.v,
                ),
                child: Text(
                  authorcardlistItemModelObj.button!,
                  style: CustomTextStyles.titleMediumPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
