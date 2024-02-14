import '../../../core/app_export.dart';

/// This class is used in the [followsection_item_widget] screen.
class FollowsectionItemModel {
  FollowsectionItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
