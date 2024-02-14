import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent1_item_widget] screen.
class Cardcomponent1ItemModel {
  Cardcomponent1ItemModel({
    this.nFTs,
    this.categoryText,
    this.descriptionText,
    this.closeImage,
    this.newsText,
    this.profileImage,
    this.timeText,
    this.profileImage2,
    this.id,
  }) {
    nFTs = nFTs ?? ImageConstant.imgUnsplashNrtlz5d2ap8;
    categoryText = categoryText ?? "NFTs";
    descriptionText = descriptionText ??
        "Minting Your First NFT: A Beginner’s Guide to Creating...";
    closeImage = closeImage ?? ImageConstant.imgCloseGray400;
    newsText = newsText ?? "Wilson Franci";
    profileImage = profileImage ?? ImageConstant.imgIconBlueGray700;
    timeText = timeText ?? "15m ago";
    profileImage2 = profileImage2 ?? ImageConstant.imgIconBlueGray70014x14;
    id = id ?? "";
  }

  String? nFTs;

  String? categoryText;

  String? descriptionText;

  String? closeImage;

  String? newsText;

  String? profileImage;

  String? timeText;

  String? profileImage2;

  String? id;
}
