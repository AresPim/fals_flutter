import 'package:flutter/material.dart';
//import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/chatbot_screen/models/chatbot_model.dart';

/// A provider class for the ChatbotScreen.
///
/// This provider manages the state of the ChatbotScreen, including the
/// current chatbotModelObj

// ignore_for_file: must_be_immutable
class ChatbotProvider extends ChangeNotifier {
  ChatbotModel chatbotModelObj = ChatbotModel();

  @override
  void dispose() {
    super.dispose();
  }
}
