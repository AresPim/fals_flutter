import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/addpost_screen/models/addpost_model.dart';

/// A provider class for the AddpostScreen.
///
/// This provider manages the state of the AddpostScreen, including the
/// current addpostModelObj

// ignore_for_file: must_be_immutable
class AddpostProvider extends ChangeNotifier {
  AddpostModel addpostModelObj = AddpostModel();

  @override
  void dispose() {
    super.dispose();
  }
}
