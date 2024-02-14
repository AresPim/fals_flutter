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
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: cardcomponentlistItemModelObj?.europe,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardcomponentlistItemModelObj.categoryText!,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 249.h,
                    child: Text(
                      cardcomponentlistItemModelObj.titleText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 264.h,
                    child: Row(
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
                        CustomImageView(
                          imagePath: ImageConstant.imgIconBlueGray700,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                            bottom: 4.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            cardcomponentlistItemModelObj.timeText!,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconBlueGray70014x14,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
