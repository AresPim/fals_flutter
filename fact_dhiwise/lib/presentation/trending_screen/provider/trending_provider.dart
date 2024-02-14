import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/trending_screen/models/trending_model.dart';

/// A provider class for the TrendingScreen.
///
/// This provider manages the state of the TrendingScreen, including the
/// current trendingModelObj

// ignore_for_file: must_be_immutable
class TrendingProvider extends ChangeNotifier {
  TrendingModel trendingModelObj = TrendingModel();

  @override
  void dispose() {
    super.dispose();
  }
}
