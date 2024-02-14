import 'models/chatbot_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_title_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/chatbot_provider.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatbotScreenState createState() => ChatbotScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatbotProvider(),
      child: ChatbotScreen(),
    );
  }
}

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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 775.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 24.h,
                    bottom: 15.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 77.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 46.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.fillGray500.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL25,
                        ),
                        child: Text(
                          "msg_hello_chatgpt_how".tr,
                          style: CustomTextStyles.labelLargeNunitoWhiteA700,
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.only(right: 38.h),
                        child: _buildProgrammingLanguages(
                          context,
                          description: "msg_hello_i_m_fine_how".tr,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildBestQuestion(context),
                      SizedBox(height: 36.v),
                      Padding(
                        padding: EdgeInsets.only(right: 38.h),
                        child: _buildProgrammingLanguages(
                          context,
                          description: "msg_there_are_many_programming".tr,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      CustomElevatedButton(
                        height: 54.v,
                        width: 220.h,
                        text: "msg_so_explain_to_me".tr,
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeNunitoWhiteA700,
                      ),
                      SizedBox(height: 29.v),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 301.h,
                            margin: EdgeInsets.symmetric(horizontal: 38.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 37.h,
                              vertical: 21.v,
                            ),
                            decoration: AppDecoration.fillGray2001.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL251,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Container(
                                  width: 218.h,
                                  margin: EdgeInsets.only(right: 7.h),
                                  child: Text(
                                    "msg_there_are_many_programming".tr,
                                    maxLines: 7,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumSFProRoundedBluegray90001,
                                  ),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 47.h,
                    top: 719.v,
                    right: 47.h,
                  ),
                  padding: EdgeInsets.all(16.h),
                  decoration: AppDecoration.outlineBlack900023.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder28,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child:
                              Selector<ChatbotProvider, TextEditingController?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.typeSomethingController,
                            builder: (context, typeSomethingController, child) {
                              return CustomTextFormField(
                                controller: typeSomethingController,
                                hintText: "msg_type_something".tr,
                                hintStyle: CustomTextStyles
                                    .labelLargeNunitoBluegray90001,
                                textInputAction: TextInputAction.done,
                              );
                            },
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIcon6,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 3.v,
                            bottom: 2.v,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVuesaxBoldSend,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                      ),
                    ],
                  ),
                ),
              ),
              _buildAppBar(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBestQuestion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray500.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Text(
        "msg_what_is_the_best".tr,
        style: CustomTextStyles.labelLargeNunitoWhiteA700,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 57.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.img42099653225686,
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(
                    left: 260.h,
                    top: 17.v,
                    bottom: 17.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.gray20001,
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildProgrammingLanguages(
    BuildContext context, {
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 150.v),
          decoration: AppDecoration.outlineBlack900022.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Container(
            height: 25.v,
            width: 26.h,
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: AppDecoration.outlineBlack900022.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRobot11,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: 13.h,
              bottom: 15.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 37.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.fillGray200.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL251,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Container(
                  width: 219.h,
                  margin: EdgeInsets.only(right: 7.h),
                  child: Text(
                    description,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumSFProRoundedBluegray90001
                        .copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
}
