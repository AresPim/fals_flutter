import '../../../core/app_export.dart';

/// This class is used in the [topicsauthor_item_widget] screen.
class TopicsauthorItemModel {
  TopicsauthorItemModel({
    this.healthImage,
    this.topicsText,
    this.loremIpsumText,
    this.id,
  }) {
    healthImage = healthImage ?? ImageConstant.imgUnsplashMmsqugmlquo;
    topicsText = topicsText ?? "Health";
    loremIpsumText = loremIpsumText ??
        "View the latest health news and explore articles on...";
    id = id ?? "";
  }

  String? healthImage;

  String? topicsText;

  String? loremIpsumText;

  String? id;
}
