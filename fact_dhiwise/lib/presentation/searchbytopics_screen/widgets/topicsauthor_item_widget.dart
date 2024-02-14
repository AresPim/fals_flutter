import '../models/topicsauthor_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class TopicsauthorItemWidget extends StatelessWidget {
  TopicsauthorItemWidget(
    this.topicsauthorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopicsauthorItemModel topicsauthorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: topicsauthorItemModelObj?.healthImage,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topicsauthorItemModelObj.topicsText!,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 194.h,
                  child: Text(
                    topicsauthorItemModelObj.loremIpsumText!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 18.v,
              bottom: 19.v,
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
                  appTheme.redA100,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
              child: CustomOutlinedButton(
                height: 34.v,
                width: 78.h,
                text: "lbl_save".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
