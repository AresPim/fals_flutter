import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/bookmark_screen/models/bookmark_model.dart';
//import '../models/cardcomponentlist1_item_model.dart';

/// A provider class for the BookmarkScreen.
///
/// This provider manages the state of the BookmarkScreen, including the
/// current bookmarkModelObj

// ignore_for_file: must_be_immutable
class BookmarkProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  BookmarkModel bookmarkModelObj = BookmarkModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
