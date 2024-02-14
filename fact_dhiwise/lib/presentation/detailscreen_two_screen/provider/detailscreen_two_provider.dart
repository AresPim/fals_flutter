import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailscreen_two_screen/models/detailscreen_two_model.dart';
import '../models/cardcomponent1_item_model.dart';

/// A provider class for the DetailscreenTwoScreen.
///
/// This provider manages the state of the DetailscreenTwoScreen, including the
/// current detailscreenTwoModelObj

// ignore_for_file: must_be_immutable
class DetailscreenTwoProvider extends ChangeNotifier {
  DetailscreenTwoModel detailscreenTwoModelObj = DetailscreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
