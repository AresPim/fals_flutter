import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailpost_settings_screen/models/detailpost_settings_model.dart';

/// A provider class for the DetailpostSettingsScreen.
///
/// This provider manages the state of the DetailpostSettingsScreen, including the
/// current detailpostSettingsModelObj

// ignore_for_file: must_be_immutable
class DetailpostSettingsProvider extends ChangeNotifier {
  DetailpostSettingsModel detailpostSettingsModelObj =
      DetailpostSettingsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
