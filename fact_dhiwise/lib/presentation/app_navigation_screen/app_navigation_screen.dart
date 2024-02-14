//import 'models/app_navigation_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgotpassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgotpassword Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotpasswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "verification Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "verification Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Topics".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.topicsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "News Source".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newsSourceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Fill Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fillProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "verification One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HomePage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trending".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trendingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SearchbyTopics".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchbytopicsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Searchby author".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchbyAuthorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bookmark".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookmarkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DetailPost".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailpostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Votes - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.votesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChatBot".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatbotScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChatBot history".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatbotHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DetailScreen Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailscreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DetailScreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "DetailScreen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailscreenOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
