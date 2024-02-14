import '../../../core/app_export.dart';

/// This class is used in the [cardcomponentlist1_item_widget] screen.
class Cardcomponentlist1ItemModel {
  Cardcomponentlist1ItemModel({
    this.image,
    this.categoriesText,
    this.titleText,
    this.bBCNews,
    this.newsImage,
    this.timeText,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage2;
    categoriesText = categoriesText ?? "Europe";
    titleText = titleText ??
        "Ukraine's President Zelensky to BBC: Blood money being paid...";
    bBCNews = bBCNews ?? ImageConstant.imgUserWhiteA700;
    newsImage = newsImage ?? "BBC News";
    timeText = timeText ?? "14m ago";
    id = id ?? "";
  }

  String? image;

  String? categoriesText;

  String? titleText;

  String? bBCNews;

  String? newsImage;

  String? timeText;

  String? id;
}
