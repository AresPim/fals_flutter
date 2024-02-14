import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.sportsImage,
    this.sportsText,
    this.newspaperText,
    this.newspaperImage,
    this.foodText,
    this.id,
  }) {
    sportsImage = sportsImage ?? ImageConstant.imgRectangle5;
    sportsText = sportsText ?? "Sports";
    newspaperText = newspaperText ?? "Philippine Star";
    newspaperImage = newspaperImage ?? ImageConstant.imgRectangle6;
    foodText = foodText ?? "Food";
    id = id ?? "";
  }

  String? sportsImage;

  String? sportsText;

  String? newspaperText;

  String? newspaperImage;

  String? foodText;

  String? id;
}
