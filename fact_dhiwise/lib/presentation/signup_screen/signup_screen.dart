import 'models/signup_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_checkbox_button.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/signup_provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignupProvider(), child: SignupScreen());
  }
}

class SignupScreenState extends State<SignupScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.img42099653225686,
                      height: 120.v,
                      width: 181.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 1.h)),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("msg_signup_to_get_started".tr,
                              style: CustomTextStyles.titleLargeRegular))),
                  SizedBox(height: 14.v),
                  _buildInputField(context),
                  SizedBox(height: 15.v),
                  _buildInputField1(context),
                  SizedBox(height: 8.v),
                  _buildRememberMeCheckBox(context),
                  SizedBox(height: 16.v),
                  _buildSignUpButton(context),
                  SizedBox(height: 15.v),
                  Text("msg_or_continue_with".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 16.v),
                  _buildFrame(context),
                  SizedBox(height: 16.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("msg_already_have_an".tr,
                        style: theme.textTheme.bodyMedium),
                    GestureDetector(
                        onTap: () {
                          navigateToLogin(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_login".tr,
                                style:
                                    CustomTextStyles.titleSmallPoppinsPrimary)))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildUsernameInputField(BuildContext context) {
    return Selector<SignupProvider, TextEditingController?>(
        selector: (context, provider) => provider.usernameInputFieldController,
        builder: (context, usernameInputFieldController, child) {
          return CustomTextFormField(
              controller: usernameInputFieldController,
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
              fillColor: appTheme.whiteA700);
        });
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_username2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildUsernameInputField(context)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordInputField(BuildContext context) {
    return Consumer<SignupProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordInputFieldController,
          textInputAction: TextInputAction.done,
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          obscureText: provider.isShowPassword,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          fillColor: appTheme.whiteA700);
    });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_password2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildPasswordInputField(context)
        ]));
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Selector<SignupProvider, bool?>(
                selector: (context, provider) => provider.rememberMeCheckBox,
                builder: (context, rememberMeCheckBox, child) {
                  return CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: "lbl_remember_me".tr,
                      value: rememberMeCheckBox,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context.read<SignupProvider>().changeCheckBox1(value);
                      });
                })));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
        onPressed: () {
          navigateToTopics(context);
        });
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            height: 48.v,
            text: "lbl_facebook".tr,
            margin: EdgeInsets.only(right: 15.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 10.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconWhiteA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray500));
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            height: 48.v,
            text: "lbl_google".tr,
            margin: EdgeInsets.only(left: 15.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 10.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconRed500,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray500));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildFacebookButton(context),
          _buildGoogleButton(context)
        ]));
  }

  /// Navigates to the topicsScreen when the action is triggered.
  navigateToTopics(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.topicsScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  navigateToLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
