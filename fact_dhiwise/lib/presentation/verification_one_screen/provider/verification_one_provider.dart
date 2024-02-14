import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_one_screen/models/verification_one_model.dart';

/// A provider class for the VerificationOneScreen.
///
/// This provider manages the state of the VerificationOneScreen, including the
/// current verificationOneModelObj

// ignore_for_file: must_be_immutable
class VerificationOneProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  VerificationOneModel verificationOneModelObj = VerificationOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
