import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_three_screen/models/verification_three_model.dart';

/// A provider class for the VerificationThreeScreen.
///
/// This provider manages the state of the VerificationThreeScreen, including the
/// current verificationThreeModelObj
class VerificationThreeProvider extends ChangeNotifier {
  VerificationThreeModel verificationThreeModelObj = VerificationThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
