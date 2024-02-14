import 'models/forget_password_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/forget_password_provider.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgetPasswordProvider(),
        child: ForgetPasswordScreen());
  }
}

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 2.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 186.h,
                          margin: EdgeInsets.only(left: 3.h),
                          child: Text("msg_forgot_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 3.v),
                      Container(
                          width: 331.h,
                          margin: EdgeInsets.only(left: 3.h, right: 51.h),
                          child: Text("msg_don_t_worry_it".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray700
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 14.v),
                      _buildForgotPasswordFrame(context),
                      SizedBox(height: 16.v),
                      _buildForgotPasswordImage(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSubmitAutoLayoutHorizontal(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlueGray700,
            margin: EdgeInsets.fromLTRB(28.h, 20.v, 384.h, 20.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildForgotPasswordFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 233.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration:
                            IconButtonStyleHelper.gradientPrimaryToRedATL32,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconWhiteA70064x64)),
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_via_email".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray500),
                              SizedBox(height: 7.v),
                              Text("msg_e_gmail_com".tr,
                                  style: CustomTextStyles
                                      .bodyLargePrimaryContainer)
                            ]))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgRadioButton24x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              radius: BorderRadius.circular(3.h),
              margin: EdgeInsets.symmetric(vertical: 20.v))
        ]));
  }

  /// Section Widget
  Widget _buildForgotPasswordImage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 143.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        padding: EdgeInsets.all(20.h),
                        decoration:
                            IconButtonStyleHelper.gradientPrimaryToRedATL32,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIcon64x64)),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_via_sms".tr,
                                  style:
                                      CustomTextStyles.bodyMediumBluegray500),
                              SizedBox(height: 5.v),
                              Text("lbl_531".tr,
                                  style: CustomTextStyles
                                      .bodyLargePrimaryContainer)
                            ]))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgRadioButton,
              height: 20.adaptSize,
              width: 20.adaptSize,
              radius: BorderRadius.circular(3.h),
              margin: EdgeInsets.only(top: 22.v, right: 2.h, bottom: 22.v))
        ]));
  }

  /// Section Widget
  Widget _buildSubmitAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack90002,
        child: CustomElevatedButton(
            text: "lbl_submit".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
            onPressed: () {
              navigateToNextPage(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the forgetPassword2Screen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPassword2Screen,
    );
  }
}
