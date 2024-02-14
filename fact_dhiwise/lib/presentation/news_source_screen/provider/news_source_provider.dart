import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/news_source_screen/models/news_source_model.dart';
import '../models/authorcardgrid_item_model.dart';
import '../models/authorcardlist_item_model.dart';

/// A provider class for the NewsSourceScreen.
///
/// This provider manages the state of the NewsSourceScreen, including the
/// current newsSourceModelObj

// ignore_for_file: must_be_immutable
class NewsSourceProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  NewsSourceModel newsSourceModelObj = NewsSourceModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
