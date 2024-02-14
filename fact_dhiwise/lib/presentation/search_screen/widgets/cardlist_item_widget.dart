import '../models/cardlist_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: cardlistItemModelObj?.europe,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
            margin: EdgeInsets.only(bottom: 25.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardlistItemModelObj.categoryText!,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 246.h,
                    child: Text(
                      cardlistItemModelObj.titleText!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 173.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA700,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                cardlistItemModelObj.sourceImage!,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconBlueGray700,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 4.v,
                              ),
                            ),
                            Text(
                              cardlistItemModelObj.timeText!,
                              style: CustomTextStyles.bodyMedium13,
                            ),
                          ],
                        ),
                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
