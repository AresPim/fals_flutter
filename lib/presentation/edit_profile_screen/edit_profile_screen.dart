//import 'models/edit_profile_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/edit_profile_provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  EditProfileScreenState createState() => EditProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EditProfileProvider(), child: EditProfileScreen());
  }
}

class EditProfileScreenState extends State<EditProfileScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v),
                child: Column(children: [
                  Container(
                      height: 140.adaptSize,
                      width: 140.adaptSize,
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder70),
                      child: Padding(
                          padding: EdgeInsets.only(left: 55.h, top: 100.v),
                          child: CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCamera)))),
                  SizedBox(height: 15.v),
                  _buildProfileInputField(context),
                  SizedBox(height: 15.v),
                  _buildFullNameInputField(context),
                  SizedBox(height: 15.v),
                  _buildEmailInputField(context),
                  SizedBox(height: 15.v),
                  _buildPhoneNumberInputField(context),
                  SizedBox(height: 15.v),
                  _buildBioInputField(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray70024x24,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onBackPressed(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_edit_profile2".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIcon11,
              margin: EdgeInsets.fromLTRB(23.h, 16.v, 23.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
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
  Widget _buildFullName(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.fullNameController,
        builder: (context, fullNameController, child) {
          return CustomTextFormField(controller: fullNameController);
        });
  }

  /// Section Widget
  Widget _buildFullNameInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_full_name".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 4.v),
          _buildFullName(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
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
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
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
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomTextFormField(controller: phoneNumberController);
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
                    style: CustomTextStyles.bodyMediumff4e4b66_1),
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.bodyMediumffc20052)
              ]),
              textAlign: TextAlign.left),
          SizedBox(height: 4.v),
          _buildPhoneNumber(context)
        ]));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Selector<EditProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.editTextController,
        builder: (context, editTextController, child) {
          return CustomTextFormField(
              controller: editTextController,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildBioInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_bio".tr, style: theme.textTheme.bodyMedium),
          SizedBox(height: 4.v),
          _buildEditText(context)
        ]));
  }

  /// Navigates to the previous screen.
  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }
}
