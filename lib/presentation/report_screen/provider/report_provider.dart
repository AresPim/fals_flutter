import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/report_screen/models/report_model.dart';

/// A provider class for the ReportScreen.
///
/// This provider manages the state of the ReportScreen, including the
/// current reportModelObj

// ignore_for_file: must_be_immutable
class ReportProvider extends ChangeNotifier {
  TextEditingController titlevalueController = TextEditingController();

  ReportModel reportModelObj = ReportModel();

  @override
  void dispose() {
    super.dispose();
    titlevalueController.dispose();
  }
}
