import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/chatbot_screen/models/chatbot_model.dart';

/// A provider class for the ChatbotScreen.
///
/// This provider manages the state of the ChatbotScreen, including the
/// current chatbotModelObj
class ChatbotProvider extends ChangeNotifier {
  TextEditingController typeSomethingController = TextEditingController();

  ChatbotModel chatbotModelObj = ChatbotModel();

  @override
  void dispose() {
    super.dispose();
    typeSomethingController.dispose();
  }
}
