import '../../../core/app_export.dart';
import 'cardcomponentlist_item_model.dart';

class TrendingModel {
  List<CardcomponentlistItemModel> cardcomponentlistItemList = [
    CardcomponentlistItemModel(
        verifiedImage: ImageConstant.imgImage1183x364,
        categoriesText: "Verified",
        descriptionText: "Russian warship: Moskva sinks in Black Sea",
        userImage: ImageConstant.imgUserWhiteA700,
        userNameText: "BBC News",
        timeAgoText: "4h ago"),
    CardcomponentlistItemModel(
        verifiedImage: ImageConstant.imgImage2183x364,
        descriptionText:
            "Ukraine's President Zelensky to BBC: Blood money being paid for Russian oil"),
    CardcomponentlistItemModel(
        verifiedImage: ImageConstant.imgImage3183x364,
        categoriesText: "Europe",
        descriptionText:
            "Her train broke down. Her phone died. And then she met her future husband")
  ];
}
