import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';

class HomepageModel {
  List<CardlistItemModel> cardlistItemList = [
    CardlistItemModel(
        verified: ImageConstant.imgImage2,
        categories: "Verified",
        title: "Ukraine's President Zelensky to BBC: Blood money being paid...",
        bBCNews: ImageConstant.imgUserWhiteA700,
        image: "BBC News",
        time: "14m ago"),
    CardlistItemModel(
        verified: ImageConstant.imgImage3,
        categories: "Verified",
        title: "Her train broke down. Her phone died. And then she met her...",
        bBCNews: ImageConstant.imgUser,
        image: "CNN",
        time: "1h ago"),
    CardlistItemModel(
        verified: ImageConstant.imgImage2,
        title:
            "Ukraine's President Zelensky to BBC: Blood money being paid..."),
    CardlistItemModel(
        verified: ImageConstant.imgImage3,
        title: "Her train broke down. Her phone died. And then she met her..",
        bBCNews: ImageConstant.imgUser,
        image: "CNN",
        time: "1h ago"),
    CardlistItemModel(
        verified: ImageConstant.imgImage196x96,
        categories: "Verified",
        title: "Russian warship: Moskva sinks in Black Sea"),
    CardlistItemModel(
        verified: ImageConstant.imgImage4,
        categories: "Verified",
        title: "Wind power produced more electricity than coal and nucle..."),
    CardlistItemModel(
        verified: ImageConstant.imgImage5,
        categories: "Verified",
        title: "'We keep rising to new challenges:' For churches hit by")
  ];
}
