import '../../../core/app_export.dart';

/// This class is used in the [cardcomponentlist_item_widget] screen.
class CardcomponentlistItemModel {
  CardcomponentlistItemModel({
    this.verifiedImage,
    this.categoriesText,
    this.descriptionText,
    this.userImage,
    this.userNameText,
    this.timeAgoText,
    this.id,
  }) {
    verifiedImage = verifiedImage ?? ImageConstant.imgImage1183x364;
    categoriesText = categoriesText ?? "Verified";
    descriptionText =
        descriptionText ?? "Russian warship: Moskva sinks in Black Sea";
    userImage = userImage ?? ImageConstant.imgUserWhiteA700;
    userNameText = userNameText ?? "BBC News";
    timeAgoText = timeAgoText ?? "4h ago";
    id = id ?? "";
  }

  String? verifiedImage;

  String? categoriesText;

  String? descriptionText;

  String? userImage;

  String? userNameText;

  String? timeAgoText;

  String? id;
}
