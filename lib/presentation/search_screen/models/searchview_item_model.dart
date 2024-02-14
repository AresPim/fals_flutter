import '../../../core/app_export.dart';

/// This class is used in the [searchview_item_widget] screen.
class SearchviewItemModel {
  SearchviewItemModel({
    this.verified,
    this.categories,
    this.loremIpsumIsSimply,
    this.bbcNews,
    this.hAgo,
    this.id,
  }) {
    verified = verified ?? ImageConstant.imgImage2;
    categories = categories ?? "Verified";
    loremIpsumIsSimply = loremIpsumIsSimply ??
        "Ukraine's President Zelensky to BBC: Blood money being paid for Russian...";
    bbcNews = bbcNews ?? "BBC News";
    hAgo = hAgo ?? "14m ago";
    id = id ?? "";
  }

  String? verified;

  String? categories;

  String? loremIpsumIsSimply;

  String? bbcNews;

  String? hAgo;

  String? id;
}
