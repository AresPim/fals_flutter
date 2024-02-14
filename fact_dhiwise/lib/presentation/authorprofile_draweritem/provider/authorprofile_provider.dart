import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/authorprofile_draweritem/models/authorprofile_model.dart';
//import '../models/cardcomponent_item_model.dart';

/// A provider class for the AuthorprofileDraweritem.
///
/// This provider manages the state of the AuthorprofileDraweritem, including the
/// current authorprofileModelObj

// ignore_for_file: must_be_immutable
class AuthorprofileProvider extends ChangeNotifier {
  TextEditingController recentController = TextEditingController();

  AuthorprofileModel authorprofileModelObj = AuthorprofileModel();

  @override
  void dispose() {
    super.dispose();
    recentController.dispose();
  }
}
