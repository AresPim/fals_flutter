import 'package:flutter/material.dart';
import 'package:fals/presentation/splash_screen/splash_screen.dart';
import 'package:fals/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:fals/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:fals/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:fals/presentation/login_screen/login_screen.dart';
import 'package:fals/presentation/signup_screen/signup_screen.dart';
import 'package:fals/presentation/fill_profile_screen/fill_profile_screen.dart';
import 'package:fals/presentation/topics_screen/topics_screen.dart';
import 'package:fals/presentation/news_source_screen/news_source_screen.dart';
import 'package:fals/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:fals/presentation/forget_password_2_screen/forget_password_2_screen.dart';
import 'package:fals/presentation/verification_1_screen/verification_1_screen.dart';
import 'package:fals/presentation/verification_2_screen/verification_2_screen.dart';
import 'package:fals/presentation/verification_3_screen/verification_3_screen.dart';
import 'package:fals/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:fals/presentation/trending_screen/trending_screen.dart';
import 'package:fals/presentation/notification_screen/notification_screen.dart';
import 'package:fals/presentation/search_screen/search_screen.dart';
import 'package:fals/presentation/report_screen/report_screen.dart';
import 'package:fals/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:fals/presentation/detailpost_screen/detailpost_screen.dart';
import 'package:fals/presentation/detailpost_settings_screen/detailpost_settings_screen.dart';
import 'package:fals/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:fals/presentation/chatbot_history_screen/chatbot_history_screen.dart';
import 'package:fals/presentation/profile_screen/profile_screen.dart';
import 'package:fals/presentation/addpost_screen/addpost_screen.dart';
import 'package:fals/presentation/profile_settings_screen/profile_settings_screen.dart';
import 'package:fals/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:fals/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String topicsScreen = '/topics_screen';

  static const String newsSourceScreen = '/news_source_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPassword2Screen = '/forget_password_2_screen';

  static const String verification1Screen = '/verification_1_screen';

  static const String verification2Screen = '/verification_2_screen';

  static const String verification3Screen = '/verification_3_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String trendingScreen = '/trending_screen';

  static const String notificationScreen = '/notification_screen';

  static const String searchScreen = '/search_screen';

  static const String reportScreen = '/report_screen';

  static const String bookmarkScreen = '/bookmark_screen';

  static const String detailpostScreen = '/detailpost_screen';

  static const String detailpostSettingsScreen = '/detailpost_settings_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String chatbotHistoryScreen = '/chatbot_history_screen';

  static const String profileScreen = '/profile_screen';

  static const String addpostScreen = '/addpost_screen';

  static const String profileSettingsScreen = '/profile_settings_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        fillProfileScreen: FillProfileScreen.builder,
        topicsScreen: TopicsScreen.builder,
        newsSourceScreen: NewsSourceScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        forgetPassword2Screen: ForgetPassword2Screen.builder,
        verification1Screen: Verification1Screen.builder,
        verification2Screen: Verification2Screen.builder,
        verification3Screen: Verification3Screen.builder,
        homepageContainerScreen: HomepageContainerScreen.builder,
        trendingScreen: TrendingScreen.builder,
        notificationScreen: NotificationScreen.builder,
        searchScreen: SearchScreen.builder,
        reportScreen: ReportScreen.builder,
        bookmarkScreen: BookmarkScreen.builder,
        detailpostScreen: DetailpostScreen.builder,
        detailpostSettingsScreen: DetailpostSettingsScreen.builder,
        chatbotScreen: ChatbotScreen.builder,
        chatbotHistoryScreen: ChatbotHistoryScreen.builder,
        profileScreen: ProfileScreen.builder,
        addpostScreen: AddpostScreen.builder,
        profileSettingsScreen: ProfileSettingsScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
        //initialRoute: ChatbotScreen.builder
      };
}
