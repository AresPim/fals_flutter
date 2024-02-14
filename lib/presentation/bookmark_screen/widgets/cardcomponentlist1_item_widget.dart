import '../models/cardcomponentlist1_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardcomponentlist1ItemWidget extends StatelessWidget {
  Cardcomponentlist1ItemWidget(
    this.cardcomponentlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cardcomponentlist1ItemModel cardcomponentlist1ItemModelObj;

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
            imagePath: cardcomponentlist1ItemModelObj.image,
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
                    cardcomponentlist1ItemModelObj.categoriesText!,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 249.h,
                    child: Text(
                      cardcomponentlist1ItemModelObj.titleText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 173.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: cardcomponentlist1ItemModelObj.bBCNews,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                cardcomponentlist1ItemModelObj.newsImage!,
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
                              cardcomponentlist1ItemModelObj.timeText!,
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
