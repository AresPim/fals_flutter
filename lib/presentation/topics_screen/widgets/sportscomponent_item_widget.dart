import '../models/sportscomponent_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SportscomponentItemWidget extends StatelessWidget {
  SportscomponentItemWidget(
    this.sportscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SportscomponentItemModel sportscomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 99.v,
        width: 184.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            CustomImageView(
              imagePath: sportscomponentItemModelObj?.sportsImage,
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
                      imagePath: sportscomponentItemModelObj?.sportsImage1,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      radius: BorderRadius.circular(
                        3.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 43.v),
                    Text(
                      sportscomponentItemModelObj.sportsText!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
