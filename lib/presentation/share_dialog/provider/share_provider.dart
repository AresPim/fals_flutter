import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/share_dialog/models/share_model.dart';

/// A provider class for the ShareDialog.
///
/// This provider manages the state of the ShareDialog, including the
/// current shareModelObj

// ignore_for_file: must_be_immutable
class ShareProvider extends ChangeNotifier {
  ShareModel shareModelObj = ShareModel();

  @override
  void dispose() {
    super.dispose();
  }
}
