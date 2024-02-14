import 'models/verification_2_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/verification_2_provider.dart';

class Verification2Screen extends StatefulWidget {
  const Verification2Screen({Key? key}) : super(key: key);

  @override
  Verification2ScreenState createState() => Verification2ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Verification2Provider(),
        child: Verification2Screen());
  }
}

class Verification2ScreenState extends State<Verification2Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 162.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_reset_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 9.v),
                      _buildResetPasswordInputField(context),
                      SizedBox(height: 13.v),
                      _buildConfirmNewPasswordInputField(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSubmitButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlueGray700,
            margin: EdgeInsets.fromLTRB(29.h, 20.v, 383.h, 20.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildResetPasswordInputField(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder35),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_new_password2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          Consumer<Verification2Provider>(builder: (context, provider, child) {
            return CustomTextFormField(
                controller: provider.newpasswordController,
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
                obscureText: provider.isShowPassword);
          })
        ]));
  }

  /// Section Widget
  Widget _buildConfirmNewPasswordInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "msg_confirm_new_password2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 3.v),
          Consumer<Verification2Provider>(builder: (context, provider, child) {
            return CustomTextFormField(
                controller: provider.newpasswordController1,
                textInputAction: TextInputAction.done,
                suffix: InkWell(
                    onTap: () {
                      provider.changePasswordVisibility1();
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize))),
                suffixConstraints: BoxConstraints(maxHeight: 48.v),
                obscureText: provider.isShowPassword1);
          })
        ]));
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
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

  /// Navigates to the verification3Screen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verification3Screen,
    );
  }
}
