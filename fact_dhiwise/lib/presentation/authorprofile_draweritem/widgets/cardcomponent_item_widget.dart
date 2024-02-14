import '../models/cardcomponent_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardcomponentItemWidget extends StatelessWidget {
  CardcomponentItemWidget(
    this.cardcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardcomponentItemModel cardcomponentItemModelObj;

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
            imagePath: cardcomponentItemModelObj.sportImage,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardcomponentItemModelObj.categoryText!,
                  style: CustomTextStyles.bodyMedium13,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 219.h,
                  child: Text(
                    cardcomponentItemModelObj.titleText!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: cardcomponentItemModelObj.userImage,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        cardcomponentItemModelObj.newsText!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: cardcomponentItemModelObj.newsImage,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        cardcomponentItemModelObj.timeText!,
                        style: CustomTextStyles.bodyMedium13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: cardcomponentItemModelObj.finalsImage,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              top: 79.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
