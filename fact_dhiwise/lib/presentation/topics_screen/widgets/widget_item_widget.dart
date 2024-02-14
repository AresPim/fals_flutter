import '../models/widget_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 99.v,
      width: 184.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: widgetItemModelObj?.image,
            height: 99.v,
            width: 184.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 21.adaptSize,
              width: 21.adaptSize,
              margin: EdgeInsets.only(
                top: 10.v,
                right: 7.h,
              ),
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
        ],
      ),
    );
  }
}
