import '../models/cardcomponent1_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardcomponent1ItemWidget extends StatelessWidget {
  Cardcomponent1ItemWidget(
    this.cardcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cardcomponent1ItemModel cardcomponent1ItemModelObj;

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
            imagePath: cardcomponent1ItemModelObj?.nFTs,
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
                    cardcomponent1ItemModelObj.categoryText!,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 242.h,
                    child: Text(
                      cardcomponent1ItemModelObj.descriptionText!,
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
                          imagePath: cardcomponent1ItemModelObj?.closeImage,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            cardcomponent1ItemModelObj.newsText!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: cardcomponent1ItemModelObj?.profileImage,
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
                            cardcomponent1ItemModelObj.timeText!,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: cardcomponent1ItemModelObj?.profileImage2,
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
          ),
        ],
      ),
    );
  }
}
