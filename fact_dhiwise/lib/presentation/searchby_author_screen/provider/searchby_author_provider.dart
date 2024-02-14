import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/searchby_author_screen/models/searchby_author_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the SearchbyAuthorScreen.
///
/// This provider manages the state of the SearchbyAuthorScreen, including the
/// current searchbyAuthorModelObj

// ignore_for_file: must_be_immutable
class SearchbyAuthorProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchbyAuthorModel searchbyAuthorModelObj = SearchbyAuthorModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
