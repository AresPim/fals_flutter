import '../../../core/app_export.dart';

/// This class is used in the [alllist_item_widget] screen.
class AlllistItemModel {
  AlllistItemModel({
    this.all,
    this.id,
  }) {
    all = all ?? "All";
    id = id ?? "";
  }

  String? all;

  String? id;
}
