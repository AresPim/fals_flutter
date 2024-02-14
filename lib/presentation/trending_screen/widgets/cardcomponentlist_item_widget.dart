import '../models/cardcomponentlist_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardcomponentlistItemWidget extends StatelessWidget {
  CardcomponentlistItemWidget(
    this.cardcomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardcomponentlistItemModel cardcomponentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack900021.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: cardcomponentlistItemModelObj?.verifiedImage,
            height: 183.v,
            width: 364.h,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            cardcomponentlistItemModelObj.categoriesText!,
            style: CustomTextStyles.bodyMedium13,
          ),
          SizedBox(height: 6.v),
          Text(
            cardcomponentlistItemModelObj.descriptionText!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 1.v),
          Row(
            children: [
              CustomImageView(
                imagePath: cardcomponentlistItemModelObj?.userImage,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  cardcomponentlistItemModelObj.userNameText!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                width: 65.h,
                margin: EdgeInsets.only(left: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconBlueGray700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        cardcomponentlistItemModelObj.timeAgoText!,
                        style: CustomTextStyles.bodyMedium13,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray70014x14,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
