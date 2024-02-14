import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/votes_page/models/votes_model.dart';

/// A provider class for the VotesPage.
///
/// This provider manages the state of the VotesPage, including the
/// current votesModelObj
class VotesProvider extends ChangeNotifier {
  VotesModel votesModelObj = VotesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
