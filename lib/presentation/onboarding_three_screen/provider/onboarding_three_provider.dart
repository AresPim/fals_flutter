import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/onboarding_three_screen/models/onboarding_three_model.dart';

/// A provider class for the OnboardingThreeScreen.
///
/// This provider manages the state of the OnboardingThreeScreen, including the
/// current onboardingThreeModelObj

// ignore_for_file: must_be_immutable
class OnboardingThreeProvider extends ChangeNotifier {
  OnboardingThreeModel onboardingThreeModelObj = OnboardingThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
