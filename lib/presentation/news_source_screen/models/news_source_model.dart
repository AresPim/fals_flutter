import '../../../core/app_export.dart';
import 'authorcardgrid_item_model.dart';
import 'authorcardlist_item_model.dart';

class NewsSourceModel {
  List<AuthorcardgridItemModel> authorcardgridItemList = [
    AuthorcardgridItemModel(newsText: "CNBC"),
    AuthorcardgridItemModel(newsText: "VICE"),
    AuthorcardgridItemModel(newsText: "Vox"),
    AuthorcardgridItemModel(newsText: "BBC News"),
    AuthorcardgridItemModel(newsText: "SCMP"),
    AuthorcardgridItemModel(newsText: "CNN"),
    AuthorcardgridItemModel(newsText: "MSN"),
    AuthorcardgridItemModel(newsText: "CNET"),
    AuthorcardgridItemModel(newsText: "USA Today")
  ];

  List<AuthorcardlistItemModel> authorcardlistItemList = [
    AuthorcardlistItemModel(
        userImage: ImageConstant.imgEllipse3,
        bBCNews: "TIME",
        button: "Follow"),
    AuthorcardlistItemModel(
        userImage: ImageConstant.imgEllipse4,
        bBCNews: "Buzzfeed",
        button: "Follow"),
    AuthorcardlistItemModel(
        userImage: ImageConstant.imgEllipse5,
        bBCNews: "Daily Mail",
        button: "Follow")
  ];
}
