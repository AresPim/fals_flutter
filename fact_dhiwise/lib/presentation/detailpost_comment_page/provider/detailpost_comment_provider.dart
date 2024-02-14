import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailpost_comment_page/models/detailpost_comment_model.dart';

/// A provider class for the DetailpostCommentPage.
///
/// This provider manages the state of the DetailpostCommentPage, including the
/// current detailpostCommentModelObj
class DetailpostCommentProvider extends ChangeNotifier {
  TextEditingController languageController = TextEditingController();

  DetailpostCommentModel detailpostCommentModelObj = DetailpostCommentModel();

  @override
  void dispose() {
    super.dispose();
    languageController.dispose();
  }
}
