import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/profile_settings_screen/models/profile_settings_model.dart';

/// A provider class for the ProfileSettingsScreen.
///
/// This provider manages the state of the ProfileSettingsScreen, including the
/// current profileSettingsModelObj

// ignore_for_file: must_be_immutable
class ProfileSettingsProvider extends ChangeNotifier {
  ProfileSettingsModel profileSettingsModelObj = ProfileSettingsModel();

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
