import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_1_screen/models/verification_1_model.dart';

/// A provider class for the Verification1Screen.
///
/// This provider manages the state of the Verification1Screen, including the
/// current verification1ModelObj

// ignore_for_file: must_be_immutable
class Verification1Provider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  Verification1Model verification1ModelObj = Verification1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
