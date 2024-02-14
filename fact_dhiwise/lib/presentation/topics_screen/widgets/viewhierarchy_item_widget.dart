import '../models/viewhierarchy_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 208.v,
      width: 184.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 99.v,
                  width: 184.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: viewhierarchyItemModelObj?.sportsImage,
                        height: 99.v,
                        width: 184.h,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 70.h,
                            right: 6.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCheckbox,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                radius: BorderRadius.circular(
                                  3.h,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 43.v),
                              Text(
                                viewhierarchyItemModelObj.sportsText!,
                                style:
                                    CustomTextStyles.titleSmallArchivoWhiteA700,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 46.v),
                Text(
                  viewhierarchyItemModelObj.newspaperText!,
                  style: CustomTextStyles.labelLargeSFProDisplayGray40001,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 99.v,
              width: 184.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: viewhierarchyItemModelObj?.newspaperImage,
                    height: 99.v,
                    width: 184.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 71.h,
                        right: 9.h,
                        bottom: 6.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                                border: Border.all(
                                  color: appTheme.purpleA200,
                                  width: 2.h,
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 44.v),
                          Text(
                            viewhierarchyItemModelObj.foodText!,
                            style: CustomTextStyles.titleSmallArchivoWhiteA700,
                          ),
                        ],
                      ),
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
