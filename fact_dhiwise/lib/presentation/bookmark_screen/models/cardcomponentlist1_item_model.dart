import '../../../core/app_export.dart';

/// This class is used in the [cardcomponentlist1_item_widget] screen.
class Cardcomponentlist1ItemModel {
  Cardcomponentlist1ItemModel({
    this.europe,
    this.categoryText,
    this.titleText,
    this.bBCNews,
    this.newsImage,
    this.timeText,
    this.id,
  }) {
    europe = europe ?? ImageConstant.imgImage2;
    categoryText = categoryText ?? "Europe";
    titleText = titleText ??
        "Ukraine's President Zelensky to BBC: Blood money being paid...";
    bBCNews = bBCNews ?? ImageConstant.imgUserWhiteA700;
    newsImage = newsImage ?? "BBC News";
    timeText = timeText ?? "14m ago";
    id = id ?? "";
  }

  String? europe;

  String? categoryText;

  String? titleText;

  String? bBCNews;

  String? newsImage;

  String? timeText;

  String? id;
}
