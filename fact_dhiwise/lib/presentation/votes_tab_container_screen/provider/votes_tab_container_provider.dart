import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/votes_tab_container_screen/models/votes_tab_container_model.dart';

/// A provider class for the VotesTabContainerScreen.
///
/// This provider manages the state of the VotesTabContainerScreen, including the
/// current votesTabContainerModelObj

// ignore_for_file: must_be_immutable
class VotesTabContainerProvider extends ChangeNotifier {
  VotesTabContainerModel votesTabContainerModelObj = VotesTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
