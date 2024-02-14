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
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: cardcomponentItemModelObj?.nftImage,
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
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 242.h,
                    child: Text(
                      cardcomponentItemModelObj.descriptionText!,
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
                          imagePath: cardcomponentItemModelObj?.closeImage,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            cardcomponentItemModelObj.newsText!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: cardcomponentItemModelObj?.profileImage,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 8.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                          ),
                          child: Text(
                            cardcomponentItemModelObj.timeText!,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: cardcomponentItemModelObj?.profileImage1,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 4.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
