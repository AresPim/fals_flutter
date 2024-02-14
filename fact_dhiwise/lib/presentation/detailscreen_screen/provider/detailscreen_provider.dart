import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailscreen_screen/models/detailscreen_model.dart';

/// A provider class for the DetailscreenScreen.
///
/// This provider manages the state of the DetailscreenScreen, including the
/// current detailscreenModelObj

// ignore_for_file: must_be_immutable
class DetailscreenProvider extends ChangeNotifier {
  DetailscreenModel detailscreenModelObj = DetailscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
