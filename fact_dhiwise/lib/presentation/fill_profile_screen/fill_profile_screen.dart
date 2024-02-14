import 'models/fill_profile_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/fill_profile_provider.dart';

class FillProfileScreen extends StatefulWidget {
  const FillProfileScreen({Key? key}) : super(key: key);

  @override
  FillProfileScreenState createState() => FillProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FillProfileProvider(), child: FillProfileScreen());
  }
}

class FillProfileScreenState extends State<FillProfileScreen> {
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
                child: Column(children: [
                  Container(
                      height: 140.adaptSize,
                      width: 140.adaptSize,
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder70),
                      child: CustomIconButton(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration:
                              IconButtonStyleHelper.gradientPrimaryToRedATL15,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCamera))),
                  SizedBox(height: 15.v),
                  _buildProfileInputField(context),
                  SizedBox(height: 15.v),
                  _buildFullNameInputField(context),
                  SizedBox(height: 15.v),
                  _buildEmailInputField(context),
                  SizedBox(height: 15.v),
                  _buildPhoneNumberInputField(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildFrame(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_fill_your_profile".tr));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.userNameController,
        builder: (context, userNameController, child) {
          return CustomTextFormField(controller: userNameController);
        });
  }

  /// Section Widget
  Widget _buildProfileInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_username2".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 4.v),
          _buildUserName(context)
        ]));
  }

  /// Section Widget
  Widget _buildFullNameInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_full_name".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 4.v),
          Selector<FillProfileProvider, TextEditingController?>(
              selector: (context, provider) => provider.fullNameController,
              builder: (context, fullNameController, child) {
                return CustomTextFormField(controller: fullNameController);
              })
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(controller: emailController);
        });
  }

  /// Section Widget
  Widget _buildEmailInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_email_address2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildEmail(context)
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomTextFormField(
              controller: phoneNumberController,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildPhoneNumberInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_phone_number2".tr,
                    style: CustomTextStyles.bodyMediumff4e4b66),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildPhoneNumber(context)
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToRedADecoration);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack,
        child: _buildNext(context));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
