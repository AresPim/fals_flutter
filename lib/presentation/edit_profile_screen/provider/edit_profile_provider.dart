import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/edit_profile_screen/models/edit_profile_model.dart';

/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  EditProfileModel editProfileModelObj = EditProfileModel();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    editTextController.dispose();
  }
}
