import '../../../core/app_export.dart';

/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {
  NotificationItemModel({
    this.notificationText,
    this.notificationImage,
    this.notificationTime,
    this.id,
  }) {
    notificationText = notificationText ??
        "BBC News has posted new europe news “Ukraine's President Zele...”";
    notificationImage = notificationImage ?? ImageConstant.imgEllipse;
    notificationTime = notificationTime ?? "15m ago";
    id = id ?? "";
  }

  String? notificationText;

  String? notificationImage;

  String? notificationTime;

  String? id;
}
