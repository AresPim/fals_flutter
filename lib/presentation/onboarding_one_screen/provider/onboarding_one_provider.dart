import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

/// A provider class for the OnboardingOneScreen.
///
/// This provider manages the state of the OnboardingOneScreen, including the
/// current onboardingOneModelObj

// ignore_for_file: must_be_immutable
class OnboardingOneProvider extends ChangeNotifier {
  OnboardingOneModel onboardingOneModelObj = OnboardingOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
