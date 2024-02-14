import '../../../core/app_export.dart';
import 'alllist_item_model.dart';
import 'cardcomponentlist_item_model.dart';

class HomepageModel {
  List<AlllistItemModel> alllistItemList = [
    AlllistItemModel(all: "All"),
    AlllistItemModel(all: "Sports"),
    AlllistItemModel(all: "Politics"),
    AlllistItemModel(all: "Bussiness"),
    AlllistItemModel(all: "Health"),
    AlllistItemModel(all: "Travel"),
    AlllistItemModel(all: "Science"),
    AlllistItemModel(all: "Fashion")
  ];

  List<CardcomponentlistItemModel> cardcomponentlistItemList = [
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage2,
        categoryText: "Europe",
        titleText:
            "Ukraine's President Zelensky to BBC: Blood money being paid...",
        userImage: ImageConstant.imgUserWhiteA700,
        userNameText: "BBC News",
        timeText: "20m ago"),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage3,
        categoryText: "Travel",
        titleText:
            "Her train broke down. Her phone died. And then she met her..."),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage2,
        categoryText: "Europe",
        titleText:
            "Ukraine's President Zelensky to BBC: Blood money being paid...",
        userImage: ImageConstant.imgUserWhiteA700,
        userNameText: "BBC News",
        timeText: "14m ago"),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage3,
        categoryText: "Travel",
        titleText:
            "Her train broke down. Her phone died. And then she met her.."),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage196x96,
        categoryText: "Europe",
        titleText: "Russian warship: Moskva sinks in Black Sea",
        userImage: ImageConstant.imgUserWhiteA700,
        userNameText: "BBC News",
        timeText: "4h ago"),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage4,
        categoryText: "Money",
        titleText:
            "Wind power produced more electricity than coal and nucle...",
        userImage: ImageConstant.imgUserWhiteA700,
        userNameText: "USA Today",
        timeText: "4h ago"),
    CardcomponentlistItemModel(
        europe: ImageConstant.imgImage5,
        categoryText: "USA Today",
        titleText: "4h ago")
  ];
}
