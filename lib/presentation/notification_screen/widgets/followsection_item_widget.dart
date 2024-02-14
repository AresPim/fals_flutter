import '../models/followsection_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FollowsectionItemWidget extends StatelessWidget {
  FollowsectionItemWidget(
    this.followsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowsectionItemModel followsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              35.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 278.h,
                    child: Text(
                      "msg_bbc_news_has_posted".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodyLargePrimaryContainer.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_15m_ago".tr,
                    style: CustomTextStyles.bodyMedium13,
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
