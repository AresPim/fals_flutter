import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailscreen_one_screen/models/detailscreen_one_model.dart';

/// A provider class for the DetailscreenOneScreen.
///
/// This provider manages the state of the DetailscreenOneScreen, including the
/// current detailscreenOneModelObj

// ignore_for_file: must_be_immutable
class DetailscreenOneProvider extends ChangeNotifier {
  DetailscreenOneModel detailscreenOneModelObj = DetailscreenOneModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
