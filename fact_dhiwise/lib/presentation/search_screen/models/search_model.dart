import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';

class SearchModel {
  List<CardlistItemModel> cardlistItemList = [
    CardlistItemModel(
        europe: ImageConstant.imgImage2,
        categoryText: "Europe",
        titleText:
            "Ukraine's President Zelensky to BBC: Blood money being paid for Russian...",
        sourceImage: "BBC News",
        timeText: "14m ago"),
    CardlistItemModel(
        europe: ImageConstant.imgImage396x96,
        categoryText: "Travel",
        titleText:
            "Her train broke down. Her phone died. And then she met her future husband",
        sourceImage: "CNN",
        timeText: "1h ago"),
    CardlistItemModel(
        europe: ImageConstant.imgImage4,
        categoryText: "Money",
        titleText:
            "Wind power produced more electricity than coal and nuclear sources for ..."),
    CardlistItemModel(
        europe: ImageConstant.imgImage5,
        categoryText: "Life",
        titleText:
            "'We keep rising to new challenges:' For churches hit by disaster, Ea...")
  ];
}
