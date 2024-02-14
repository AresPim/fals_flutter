import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.europe,
    this.categoryText,
    this.titleText,
    this.sourceImage,
    this.timeText,
    this.id,
  }) {
    europe = europe ?? ImageConstant.imgImage2;
    categoryText = categoryText ?? "Europe";
    titleText = titleText ??
        "Ukraine's President Zelensky to BBC: Blood money being paid for Russian...";
    sourceImage = sourceImage ?? "BBC News";
    timeText = timeText ?? "14m ago";
    id = id ?? "";
  }

  String? europe;

  String? categoryText;

  String? titleText;

  String? sourceImage;

  String? timeText;

  String? id;
}
