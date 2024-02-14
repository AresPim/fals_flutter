import '../../../core/app_export.dart';
import 'notification_item_model.dart';

class NotificationModel {
  List<NotificationItemModel> notificationItemList = [
    NotificationItemModel(
        notificationText:
            "BBC News has posted new europe news “Ukraine's President Zele...”",
        notificationImage: ImageConstant.imgEllipse,
        notificationTime: "15m ago"),
    NotificationItemModel(
        notificationText:
            "Modelyn Saris likes your news\n“Minting Your First NFT: A... “",
        notificationImage: ImageConstant.imgEllipse14,
        notificationTime: "1 Day ago"),
    NotificationItemModel(notificationTime: "1h ago")
  ];
}
