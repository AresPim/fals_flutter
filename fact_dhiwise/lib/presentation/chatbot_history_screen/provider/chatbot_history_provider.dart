import 'package:flutter/material.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/chatbot_history_screen/models/chatbot_history_model.dart';

/// A provider class for the ChatbotHistoryScreen.
///
/// This provider manages the state of the ChatbotHistoryScreen, including the
/// current chatbotHistoryModelObj

// ignore_for_file: must_be_immutable
class ChatbotHistoryProvider extends ChangeNotifier {
  ChatbotHistoryModel chatbotHistoryModelObj = ChatbotHistoryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
