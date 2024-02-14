import '../models/authorcardgrid_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class AuthorcardgridItemWidget extends StatelessWidget {
  AuthorcardgridItemWidget(
    this.authorcardgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AuthorcardgridItemModel authorcardgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.amber500,
                borderRadius: BorderRadius.circular(
                  35.h,
                ),
              ),
            ),
          ),
          Text(
            authorcardgridItemModelObj.newsText!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 7.v),
          OutlineGradientButton(
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
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: CustomOutlinedButton(
              width: 97.h,
              text: "lbl_follow".tr,
            ),
          ),
        ],
      ),
    );
  }
}
