import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/signup_screen/models/signup_model.dart';

/// A provider class for the SignupScreen.
///
/// This provider manages the state of the SignupScreen, including the
/// current signupModelObj

// ignore_for_file: must_be_immutable
class SignupProvider extends ChangeNotifier {
  TextEditingController usernameInputFieldController = TextEditingController();

  TextEditingController passwordInputFieldController = TextEditingController();

  SignupModel signupModelObj = SignupModel();

  bool isShowPassword = true;

  bool rememberMeCheckBox = false;

  @override
  void dispose() {
    super.dispose();
    usernameInputFieldController.dispose();
    passwordInputFieldController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    rememberMeCheckBox = value;
    notifyListeners();
  }
}
