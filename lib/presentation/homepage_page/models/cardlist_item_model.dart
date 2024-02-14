import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.verified,
    this.categories,
    this.title,
    this.bBCNews,
    this.image,
    this.time,
    this.id,
  }) {
    verified = verified ?? ImageConstant.imgImage2;
    categories = categories ?? "Verified";
    title = title ??
        "Ukraine's President Zelensky to BBC: Blood money being paid...";
    bBCNews = bBCNews ?? ImageConstant.imgUserWhiteA700;
    image = image ?? "BBC News";
    time = time ?? "14m ago";
    id = id ?? "";
  }

  String? verified;

  String? categories;

  String? title;

  String? bBCNews;

  String? image;

  String? time;

  String? id;
}
