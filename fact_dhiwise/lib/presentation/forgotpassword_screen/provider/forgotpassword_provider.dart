import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/forgotpassword_screen/models/forgotpassword_model.dart';

/// A provider class for the ForgotpasswordScreen.
///
/// This provider manages the state of the ForgotpasswordScreen, including the
/// current forgotpasswordModelObj

// ignore_for_file: must_be_immutable
class ForgotpasswordProvider extends ChangeNotifier {
  ForgotpasswordModel forgotpasswordModelObj = ForgotpasswordModel();

  @override
  void dispose() {
    super.dispose();
  }
}
