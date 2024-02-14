import '../models/notification_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 99.v,
        width: 380.h,
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 278.h,
                margin: EdgeInsets.only(top: 2.v),
                child: Text(
                  notificationItemModelObj.notificationText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: notificationItemModelObj?.notificationImage,
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    radius: BorderRadius.circular(
                      35.h,
                    ),
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 51.v,
                    ),
                    child: Text(
                      notificationItemModelObj.notificationTime!,
                      style: CustomTextStyles.bodyMedium13,
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
