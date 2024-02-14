import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent_item_widget] screen.
class CardcomponentItemModel {
  CardcomponentItemModel({
    this.nftImage,
    this.categoryText,
    this.descriptionText,
    this.closeImage,
    this.newsText,
    this.profileImage,
    this.timeText,
    this.profileImage1,
    this.id,
  }) {
    nftImage = nftImage ?? ImageConstant.imgUnsplashNrtlz5d2ap8;
    categoryText = categoryText ?? "NFTs";
    descriptionText = descriptionText ??
        "Minting Your First NFT: A Beginner’s Guide to Creating...";
    closeImage = closeImage ?? ImageConstant.imgCloseGray400;
    newsText = newsText ?? "Wilson Franci";
    profileImage = profileImage ?? ImageConstant.imgIconBlueGray700;
    timeText = timeText ?? "15m ago";
    profileImage1 = profileImage1 ?? ImageConstant.imgIconBlueGray70014x14;
    id = id ?? "";
  }

  String? nftImage;

  String? categoryText;

  String? descriptionText;

  String? closeImage;

  String? newsText;

  String? profileImage;

  String? timeText;

  String? profileImage1;

  String? id;
}
