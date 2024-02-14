import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

class SearchbyAuthorModel {
  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        newsImage: ImageConstant.imgEllipse,
        authorText: "BBC News",
        authorImage: ImageConstant.imgVerifier1,
        followersText: "1.2M Followers"),
    UserprofileItemModel(
        newsImage: ImageConstant.imgEllipse2, followersText: "325K Followers"),
    UserprofileItemModel(
        newsImage: ImageConstant.imgEllipse1, followersText: "18K Followers"),
    UserprofileItemModel(
        authorText: "Vox",
        authorImage: ImageConstant.imgVerifier1,
        followersText: "452K Followers"),
    UserprofileItemModel(
        authorText: "CNBC",
        authorImage: ImageConstant.imgVerifier1,
        followersText: "21K Followers"),
    UserprofileItemModel(followersText: "959K Followers")
  ];
}
