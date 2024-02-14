import '../../../core/app_export.dart';
import 'sportscomponent_item_model.dart';

class TopicsModel {
  List<SportscomponentItemModel> sportscomponentItemList = [
    SportscomponentItemModel(
        sportsImage: ImageConstant.imgRectangle5,
        sportsImage1: ImageConstant.imgCheckbox,
        sportsText: "Sports"),
    SportscomponentItemModel(
        sportsImage: ImageConstant.imgRectangle599x184,
        sportsImage1: ImageConstant.imgCheckbox,
        sportsText: "Science")
  ];
}
