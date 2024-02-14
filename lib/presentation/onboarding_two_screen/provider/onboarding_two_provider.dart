import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/onboarding_two_screen/models/onboarding_two_model.dart';

/// A provider class for the OnboardingTwoScreen.
///
/// This provider manages the state of the OnboardingTwoScreen, including the
/// current onboardingTwoModelObj

// ignore_for_file: must_be_immutable
class OnboardingTwoProvider extends ChangeNotifier {
  OnboardingTwoModel onboardingTwoModelObj = OnboardingTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
