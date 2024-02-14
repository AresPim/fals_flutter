import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/fill_profile_screen/models/fill_profile_model.dart';

/// A provider class for the FillProfileScreen.
///
/// This provider manages the state of the FillProfileScreen, including the
/// current fillProfileModelObj

// ignore_for_file: must_be_immutable
class FillProfileProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  FillProfileModel fillProfileModelObj = FillProfileModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
