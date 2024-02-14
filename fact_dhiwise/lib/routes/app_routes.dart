import 'package:flutter/material.dart';
import 'package:fals/presentation/login_screen/login_screen.dart';
import 'package:fals/presentation/signup_screen/signup_screen.dart';
import 'package:fals/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:fals/presentation/forgotpassword_two_screen/forgotpassword_two_screen.dart';
import 'package:fals/presentation/verification_two_screen/verification_two_screen.dart';
import 'package:fals/presentation/verification_three_screen/verification_three_screen.dart';
import 'package:fals/presentation/topics_screen/topics_screen.dart';
import 'package:fals/presentation/news_source_screen/news_source_screen.dart';
import 'package:fals/presentation/fill_profile_screen/fill_profile_screen.dart';
import 'package:fals/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:fals/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:fals/presentation/trending_screen/trending_screen.dart';
import 'package:fals/presentation/notification_screen/notification_screen.dart';
import 'package:fals/presentation/search_screen/search_screen.dart';
import 'package:fals/presentation/searchbytopics_screen/searchbytopics_screen.dart';
import 'package:fals/presentation/searchby_author_screen/searchby_author_screen.dart';
import 'package:fals/presentation/report_screen/report_screen.dart';
import 'package:fals/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:fals/presentation/detailpost_screen/detailpost_screen.dart';
import 'package:fals/presentation/votes_tab_container_screen/votes_tab_container_screen.dart';
import 'package:fals/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:fals/presentation/chatbot_history_screen/chatbot_history_screen.dart';
import 'package:fals/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:fals/presentation/detailscreen_two_screen/detailscreen_two_screen.dart';
import 'package:fals/presentation/detailscreen_screen/detailscreen_screen.dart';
import 'package:fals/presentation/detailscreen_one_screen/detailscreen_one_screen.dart';
import 'package:fals/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String forgotpasswordTwoScreen = '/forgotpassword_two_screen';

  static const String verificationTwoScreen = '/verification_two_screen';

  static const String verificationThreeScreen = '/verification_three_screen';

  static const String topicsScreen = '/topics_screen';

  static const String newsSourceScreen = '/news_source_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String trendingScreen = '/trending_screen';

  static const String notificationScreen = '/notification_screen';

  static const String searchScreen = '/search_screen';

  static const String searchbytopicsScreen = '/searchbytopics_screen';

  static const String searchbyAuthorScreen = '/searchby_author_screen';

  static const String reportScreen = '/report_screen';

  static const String bookmarkScreen = '/bookmark_screen';

  static const String detailpostScreen = '/detailpost_screen';

  static const String detailpostCommentPage = '/detailpost_comment_page';

  static const String votesPage = '/votes_page';

  static const String votesTabContainerScreen = '/votes_tab_container_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String chatbotHistoryScreen = '/chatbot_history_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String detailscreenTwoScreen = '/detailscreen_two_screen';

  static const String detailscreenScreen = '/detailscreen_screen';

  static const String detailscreenOneScreen = '/detailscreen_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        forgotpasswordScreen: ForgotpasswordScreen.builder,
        forgotpasswordTwoScreen: ForgotpasswordTwoScreen.builder,
        verificationTwoScreen: VerificationTwoScreen.builder,
        verificationThreeScreen: VerificationThreeScreen.builder,
        topicsScreen: TopicsScreen.builder,
        newsSourceScreen: NewsSourceScreen.builder,
        fillProfileScreen: FillProfileScreen.builder,
        verificationOneScreen: VerificationOneScreen.builder,
        homepageContainerScreen: HomepageContainerScreen.builder,
        trendingScreen: TrendingScreen.builder,
        notificationScreen: NotificationScreen.builder,
        searchScreen: SearchScreen.builder,
        searchbytopicsScreen: SearchbytopicsScreen.builder,
        searchbyAuthorScreen: SearchbyAuthorScreen.builder,
        reportScreen: ReportScreen.builder,
        bookmarkScreen: BookmarkScreen.builder,
        detailpostScreen: DetailpostScreen.builder,
        votesTabContainerScreen: VotesTabContainerScreen.builder,
        chatbotScreen: ChatbotScreen.builder,
        chatbotHistoryScreen: ChatbotHistoryScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        detailscreenTwoScreen: DetailscreenTwoScreen.builder,
        detailscreenScreen: DetailscreenScreen.builder,
        detailscreenOneScreen: DetailscreenOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        // initialRoute: LoginScreen.builder
        initialRoute: SignupScreen.builder
      };
}
