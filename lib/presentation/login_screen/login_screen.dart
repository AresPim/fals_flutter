import 'models/login_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_checkbox_button.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

class LoginScreenState extends State<LoginScreen> {
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
                  SizedBox(height: 5.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 222.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Text("msg_welcome_back_you_ve_been".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargeRegular
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 70.v),
                  _buildInputFieldUsername(context),
                  SizedBox(height: 15.v),
                  _buildInputFieldPassword(context),
                  SizedBox(height: 8.v),
                  _buildFrameRememberMe(context),
                  SizedBox(height: 16.v),
                  _buildButtonLogin(context),
                  SizedBox(height: 15.v),
                  Text("msg_or_continue_with".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 16.v),
                  _buildFrame(context),
                  SizedBox(height: 15.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("msg_don_t_have_an_account".tr,
                            style: theme.textTheme.bodyMedium)),
                    GestureDetector(
                        onTap: () {
                          navigateToSignup(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_sign_up2".tr,
                                      style: CustomTextStyles
                                          .titleSmallPoppinsff73069a)
                                ]),
                                textAlign: TextAlign.left)))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildInputFieldUsername(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_username2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          Selector<LoginProvider, TextEditingController?>(
              selector: (context, provider) => provider.userNameController,
              builder: (context, userNameController, child) {
                return CustomTextFormField(
                    controller: userNameController,
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
              })
        ]));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordController,
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
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
    });
  }

  /// Section Widget
  Widget _buildInputFieldPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_password2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildPassword(context)
        ]));
  }

  /// Section Widget
  Widget _buildFrameRememberMe(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Selector<LoginProvider, bool?>(
              selector: (context, provider) => provider.rememberMe,
              builder: (context, rememberMe, child) {
                return CustomCheckboxButton(
                    text: "lbl_remember_me".tr,
                    value: rememberMe,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context.read<LoginProvider>().changeCheckBox1(value);
                    });
              }),
          GestureDetector(
              onTap: () {
                navigateToForgetPassword(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("msg_forget_password".tr,
                      style: CustomTextStyles.bodyMediumPrimary)))
        ]));
  }

  /// Section Widget
  Widget _buildButtonLogin(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
        onPressed: () {
          navigateToHomePage(context);
        });
  }

  /// Section Widget
  Widget _buildButtonFacebook(BuildContext context) {
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
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray500));
  }

  /// Section Widget
  Widget _buildButtonGoogle(BuildContext context) {
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
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray500));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildButtonFacebook(context),
          _buildButtonGoogle(context)
        ]));
  }

  /// Navigates to the forgetPasswordScreen when the action is triggered.
  navigateToForgetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPasswordScreen,
    );
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  navigateToHomePage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageContainerScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  navigateToSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
