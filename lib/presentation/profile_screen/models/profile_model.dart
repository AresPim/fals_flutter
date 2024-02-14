import '../../../core/app_export.dart';
import 'cardcomponent_item_model.dart';

class ProfileModel {
  List<CardcomponentItemModel> cardcomponentItemList = [
    CardcomponentItemModel(
        nftImage: ImageConstant.imgUnsplashNrtlz5d2ap8,
        categoryText: "NFTs",
        descriptionText:
            "Minting Your First NFT: A Beginner’s Guide to Creating...",
        closeImage: ImageConstant.imgCloseGray400,
        newsText: "Wilson Franci",
        profileImage: ImageConstant.imgIconBlueGray700,
        timeText: "15m ago",
        profileImage1: ImageConstant.imgIconBlueGray70014x14),
    CardcomponentItemModel(
        nftImage: ImageConstant.imgUnsplash9opihrpivr0,
        categoryText: "Business",
        descriptionText:
            "5 things to know before the stock market opens Monday"),
    CardcomponentItemModel(
        nftImage: ImageConstant.imgUnsplash1kdig258bu,
        categoryText: "Travel",
        descriptionText:
            "Bali plans to reopen to international tourists in Septe...")
  ];
}
