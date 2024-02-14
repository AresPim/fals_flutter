import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_container_screen/models/homepage_container_model.dart';

/// A provider class for the HomepageContainerScreen.
///
/// This provider manages the state of the HomepageContainerScreen, including the
/// current homepageContainerModelObj

// ignore_for_file: must_be_immutable
class HomepageContainerProvider extends ChangeNotifier {
  HomepageContainerModel homepageContainerModelObj = HomepageContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
