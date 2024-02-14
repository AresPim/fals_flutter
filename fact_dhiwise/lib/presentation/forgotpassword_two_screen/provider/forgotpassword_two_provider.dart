import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/forgotpassword_two_screen/models/forgotpassword_two_model.dart';

/// A provider class for the ForgotpasswordTwoScreen.
///
/// This provider manages the state of the ForgotpasswordTwoScreen, including the
/// current forgotpasswordTwoModelObj

// ignore_for_file: must_be_immutable
class ForgotpasswordTwoProvider extends ChangeNotifier {
  TextEditingController mobileNumberController = TextEditingController();

  ForgotpasswordTwoModel forgotpasswordTwoModelObj = ForgotpasswordTwoModel();

  @override
  void dispose() {
    super.dispose();
    mobileNumberController.dispose();
  }
}
