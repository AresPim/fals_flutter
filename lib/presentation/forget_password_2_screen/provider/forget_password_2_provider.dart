import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/forget_password_2_screen/models/forget_password_2_model.dart';

/// A provider class for the ForgetPassword2Screen.
///
/// This provider manages the state of the ForgetPassword2Screen, including the
/// current forgetPassword2ModelObj

// ignore_for_file: must_be_immutable
class ForgetPassword2Provider extends ChangeNotifier {
  TextEditingController mobileNumberController = TextEditingController();

  ForgetPassword2Model forgetPassword2ModelObj = ForgetPassword2Model();

  @override
  void dispose() {
    super.dispose();
    mobileNumberController.dispose();
  }
}
