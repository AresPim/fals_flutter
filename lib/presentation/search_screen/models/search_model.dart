import '../../../core/app_export.dart';
import 'searchview_item_model.dart';

class SearchModel {
  List<SearchviewItemModel> searchviewItemList = [
    SearchviewItemModel(
        verified: ImageConstant.imgImage2,
        categories: "Verified",
        loremIpsumIsSimply:
            "Ukraine's President Zelensky to BBC: Blood money being paid for Russian...",
        bbcNews: "BBC News",
        hAgo: "14m ago"),
    SearchviewItemModel(
        verified: ImageConstant.imgImage196x96,
        categories: "Not Yet Verified",
        loremIpsumIsSimply: "Russian warship: Moskva sinks in Black Sea",
        bbcNews: "BBC News",
        hAgo: "1h ago"),
    SearchviewItemModel(
        verified: ImageConstant.imgImage396x96,
        categories: "Verified",
        loremIpsumIsSimply:
            "Her train broke down. Her phone died. And then she met her future husband",
        bbcNews: "CNN",
        hAgo: "1h ago"),
    SearchviewItemModel(
        verified: ImageConstant.imgImage4,
        categories: "Verified",
        loremIpsumIsSimply:
            "Wind power produced more electricity than coal and nuclear sources for ...",
        bbcNews: "USA Today",
        hAgo: "4h ago"),
    SearchviewItemModel(
        verified: ImageConstant.imgImage5,
        categories: "Not Yet Veriified",
        loremIpsumIsSimply:
            "'We keep rising to new challenges:' For churches hit by disaster, Ea...",
        bbcNews: "USA Today",
        hAgo: "4h ago")
  ];
}
