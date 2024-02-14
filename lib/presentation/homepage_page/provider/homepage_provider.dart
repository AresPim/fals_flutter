import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/models/homepage_model.dart';
import '../models/cardlist_item_model.dart';

/// A provider class for the HomepagePage.
///
/// This provider manages the state of the HomepagePage, including the
/// current homepageModelObj

// ignore_for_file: must_be_immutable
class HomepageProvider extends ChangeNotifier {
  HomepageModel homepageModelObj = HomepageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
