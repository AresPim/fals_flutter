import '../../../core/app_export.dart';

/// This class is used in the [authorcardgrid_item_widget] screen.
class AuthorcardgridItemModel {
  AuthorcardgridItemModel({
    this.newsText,
    this.id,
  }) {
    newsText = newsText ?? "CNBC";
    id = id ?? "";
  }

  String? newsText;

  String? id;
}
