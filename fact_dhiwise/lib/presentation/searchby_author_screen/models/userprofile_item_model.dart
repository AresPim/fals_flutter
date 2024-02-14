import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.newsImage,
    this.authorText,
    this.authorImage,
    this.followersText,
    this.id,
  }) {
    newsImage = newsImage ?? ImageConstant.imgEllipse;
    authorText = authorText ?? "BBC News";
    authorImage = authorImage ?? ImageConstant.imgVerifier1;
    followersText = followersText ?? "1.2M Followers";
    id = id ?? "";
  }

  String? newsImage;

  String? authorText;

  String? authorImage;

  String? followersText;

  String? id;
}
