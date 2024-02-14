import '../../../core/app_export.dart';

/// This class is used in the [cardcomponentlist_item_widget] screen.
class CardcomponentlistItemModel {
  CardcomponentlistItemModel({
    this.europe,
    this.categoryText,
    this.titleText,
    this.userImage,
    this.userNameText,
    this.timeText,
    this.id,
  }) {
    europe = europe ?? ImageConstant.imgImage2;
    categoryText = categoryText ?? "Europe";
    titleText = titleText ??
        "Ukraine's President Zelensky to BBC: Blood money being paid...";
    userImage = userImage ?? ImageConstant.imgUserWhiteA700;
    userNameText = userNameText ?? "BBC News";
    timeText = timeText ?? "14m ago";
    id = id ?? "";
  }

  String? europe;

  String? categoryText;

  String? titleText;

  String? userImage;

  String? userNameText;

  String? timeText;

  String? id;
}
