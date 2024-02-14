import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/verification_2_screen/models/verification_2_model.dart';

/// A provider class for the Verification2Screen.
///
/// This provider manages the state of the Verification2Screen, including the
/// current verification2ModelObj

// ignore_for_file: must_be_immutable
class Verification2Provider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Verification2Model verification2ModelObj = Verification2Model();

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
