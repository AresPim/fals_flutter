import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_3_screen/models/verification_3_model.dart';

/// A provider class for the Verification3Screen.
///
/// This provider manages the state of the Verification3Screen, including the
/// current verification3ModelObj

// ignore_for_file: must_be_immutable
class Verification3Provider extends ChangeNotifier {
  Verification3Model verification3ModelObj = Verification3Model();

  @override
  void dispose() {
    super.dispose();
  }
}
