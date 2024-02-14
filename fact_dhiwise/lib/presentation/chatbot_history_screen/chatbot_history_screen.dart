import 'models/chatbot_history_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_title.dart';
import 'package:fals/widgets/app_bar/appbar_title_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/chatbot_history_provider.dart';

class ChatbotHistoryScreen extends StatefulWidget {
  const ChatbotHistoryScreen({Key? key}) : super(key: key);

  @override
  ChatbotHistoryScreenState createState() => ChatbotHistoryScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatbotHistoryProvider(),
        child: ChatbotHistoryScreen());
  }
}

class ChatbotHistoryScreenState extends State<ChatbotHistoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 25.h, right: 158.h, bottom: 7.v),
                        decoration: AppDecoration.fillGrayF,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_previous_7days".tr,
                                  style:
                                      CustomTextStyles.titleSmallNunitoGray900),
                              SizedBox(height: 40.v),
                              Text("msg_gaza_is_under_attack".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 7.v),
                              Text("lbl_corona_is_back".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 12.v),
                              Text("msg_fully_auto_layout".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 9.v),
                              Text("msg_easy_customizable".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 10.v),
                              Text("msg_clean_stylish".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 37.v),
                              Text("lbl_previous_30days".tr,
                                  style:
                                      CustomTextStyles.titleSmallNunitoGray900),
                              SizedBox(height: 40.v),
                              Text("msg_gaza_is_under_attack".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 7.v),
                              Text("lbl_corona_is_back".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 12.v),
                              Text("msg_gaza_is_under_attack".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 7.v),
                              Text("lbl_corona_is_back".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 12.v),
                              Text("msg_fully_auto_layout".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 9.v),
                              Text("msg_easy_customizable".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 10.v),
                              Text("msg_clean_stylish".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 10.v),
                              Text("msg_fully_auto_layout".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 9.v),
                              Text("msg_easy_customizable".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 10.v),
                              Text("msg_clean_stylish".tr,
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 10.v),
                              Text("msg_easy_customizable".tr,
                                  style: theme.textTheme.titleLarge)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 13.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Row(children: [
              AppbarTitle(text: "lbl_new_chat".tr),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgIconBlueGray70020x20,
                  margin: EdgeInsets.only(left: 14.h, top: 5.v, bottom: 4.v))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
