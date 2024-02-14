import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_two_screen/models/verification_two_model.dart';

/// A provider class for the VerificationTwoScreen.
///
/// This provider manages the state of the VerificationTwoScreen, including the
/// current verificationTwoModelObj

// ignore_for_file: must_be_immutable
class VerificationTwoProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  VerificationTwoModel verificationTwoModelObj = VerificationTwoModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }
}
