import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/topics_screen/models/topics_model.dart';
import '../models/sportscomponent_item_model.dart';

/// A provider class for the TopicsScreen.
///
/// This provider manages the state of the TopicsScreen, including the
/// current topicsModelObj

// ignore_for_file: must_be_immutable
class TopicsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  TopicsModel topicsModelObj = TopicsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    searchController1.dispose();
  }
}
