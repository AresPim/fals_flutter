import '../../../core/app_export.dart';

/// This class is used in the [sportscomponent_item_widget] screen.
class SportscomponentItemModel {
  SportscomponentItemModel({
    this.sportsImage,
    this.sportsImage1,
    this.sportsText,
    this.id,
  }) {
    sportsImage = sportsImage ?? ImageConstant.imgRectangle5;
    sportsImage1 = sportsImage1 ?? ImageConstant.imgCheckbox;
    sportsText = sportsText ?? "Sports";
    id = id ?? "";
  }

  String? sportsImage;

  String? sportsImage1;

  String? sportsText;

  String? id;
}
