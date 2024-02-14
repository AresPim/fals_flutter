import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent_item_widget] screen.
class CardcomponentItemModel {
  CardcomponentItemModel({
    this.sportImage,
    this.categoryText,
    this.titleText,
    this.userImage,
    this.newsText,
    this.newsImage,
    this.timeText,
    this.finalsImage,
    this.id,
  }) {
    sportImage = sportImage ?? ImageConstant.imgImage6;
    categoryText = categoryText ?? "Sport";
    titleText = titleText ?? "Frankfurt stun Barcelona to reach semi-finals";
    userImage = userImage ?? ImageConstant.imgUserWhiteA700;
    newsText = newsText ?? "BBC News";
    newsImage = newsImage ?? ImageConstant.imgIconBlueGray700;
    timeText = timeText ?? "1h ago";
    finalsImage = finalsImage ?? ImageConstant.imgIconBlueGray70014x14;
    id = id ?? "";
  }

  String? sportImage;

  String? categoryText;

  String? titleText;

  String? userImage;

  String? newsText;

  String? newsImage;

  String? timeText;

  String? finalsImage;

  String? id;
}
