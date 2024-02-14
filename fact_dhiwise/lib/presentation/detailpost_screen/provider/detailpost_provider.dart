import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailpost_screen/models/detailpost_model.dart';

/// A provider class for the DetailpostScreen.
///
/// This provider manages the state of the DetailpostScreen, including the
/// current detailpostModelObj

// ignore_for_file: must_be_immutable
class DetailpostProvider extends ChangeNotifier {
  DetailpostModel detailpostModelObj = DetailpostModel();

  @override
  void dispose() {
    super.dispose();
  }
}
