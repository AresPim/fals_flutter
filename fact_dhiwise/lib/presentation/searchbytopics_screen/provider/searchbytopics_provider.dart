import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/searchbytopics_screen/models/searchbytopics_model.dart';
import '../models/topicsauthor_item_model.dart';

/// A provider class for the SearchbytopicsScreen.
///
/// This provider manages the state of the SearchbytopicsScreen, including the
/// current searchbytopicsModelObj

// ignore_for_file: must_be_immutable
class SearchbytopicsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchbytopicsModel searchbytopicsModelObj = SearchbytopicsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
