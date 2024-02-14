import '../../../core/app_export.dart';

/// This class is used in the [authorcardlist_item_widget] screen.
class AuthorcardlistItemModel {
  AuthorcardlistItemModel({
    this.userImage,
    this.bBCNews,
    this.button,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgEllipse3;
    bBCNews = bBCNews ?? "TIME";
    button = button ?? "Follow";
    id = id ?? "";
  }

  String? userImage;

  String? bBCNews;

  String? button;

  String? id;
}
