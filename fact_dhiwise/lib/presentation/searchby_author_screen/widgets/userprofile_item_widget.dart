import '../models/userprofile_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 172.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: userprofileItemModelObj?.newsImage,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    35.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            userprofileItemModelObj.authorText!,
                            style: theme.textTheme.bodyLarge,
                          ),
                          CustomImageView(
                            imagePath: userprofileItemModelObj?.authorImage,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                              left: 1.h,
                              top: 4.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        userprofileItemModelObj.followersText!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 32.v,
            width: 95.h,
            text: "lbl_following".tr,
            margin: EdgeInsets.symmetric(vertical: 19.v),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedATL16Decoration,
          ),
        ],
      ),
    );
  }
}
