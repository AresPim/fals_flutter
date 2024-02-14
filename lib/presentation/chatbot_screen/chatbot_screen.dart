//import 'models/chatbot_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_title_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'provider/chatbot_provider.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  ChatbotScreenState createState() => ChatbotScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatbotProvider(), child: ChatbotScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChatbotScreenState extends State<ChatbotScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 6.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(),
                  _buildChatBotFiftyTwo(context),
                  SizedBox(height: 10.v),
                  Container(
                      margin: EdgeInsets.only(left: 7.h, right: 12.h),
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlineBlack900024.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder28),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 6.h, top: 3.v, bottom: 2.v),
                                child: Text("msg_hello_fals_i_need".tr,
                                    style: CustomTextStyles
                                        .labelLargeNunitoPrimary)),
                            Spacer(),
                            Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIcon6,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 3.v))),
                            CustomImageView(
                                imagePath: ImageConstant.imgVuesaxBoldSend,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 5.h))
                          ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 58.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 245.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgMenu1,
                    margin: EdgeInsets.symmetric(vertical: 16.v),
                    onTap: () {
                      navigateToChatHistory(context);
                    }),
                AppbarTitleImage(
                    imagePath: ImageConstant.img42099653225686,
                    margin: EdgeInsets.only(left: 17.h))
              ])),
          SizedBox(height: 1.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildChatBotFiftyTwo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 25.v,
          width: 26.h,
          margin: EdgeInsets.symmetric(vertical: 7.v),
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          decoration: AppDecoration.outlineBlack900023
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgRobot11,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center)),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v),
              decoration: AppDecoration.fillGray100
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text("msg_which_news_do_you".tr,
                        style: CustomTextStyles.titleSmallNunitoGray800)
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the chatbotHistoryScreen when the action is triggered.
  navigateToChatHistory(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatbotHistoryScreen,
    );
  }
}
