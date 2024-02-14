//import 'models/fill_profile_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:fals/widgets/custom_radio_button.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
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
                  SizedBox(height: 26.v),
                  _buildInputField1(context),
                  SizedBox(height: 15.v),
                  _buildInputField2(context),
                  SizedBox(height: 15.v),
                  _buildInputField3(context),
                  SizedBox(height: 27.v),
                  _buildRadioGroup(context),
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
        title: AppbarSubtitleTwo(text: "msg_fill_your_profile".tr));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.fullNameController,
        builder: (context, fullNameController, child) {
          return CustomTextFormField(controller: fullNameController);
        });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
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
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(controller: emailController);
        });
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
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
    return Selector<FillProfileProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomTextFormField(
              controller: phoneNumberController,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
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
  Widget _buildRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child:
            Consumer<FillProfileProvider>(builder: (context, provider, child) {
          return provider.fillProfileModelObj!.radioList.isNotEmpty
              ? Row(children: [
                  CustomRadioButton(
                      width: 146.h,
                      text: "lbl_male".tr,
                      value: provider.fillProfileModelObj?.radioList[0] ?? "",
                      groupValue: provider.radioGroup,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                      isRightCheck: true,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: CustomRadioButton(
                          width: 146.h,
                          text: "lbl_female".tr,
                          value:
                              provider.fillProfileModelObj?.radioList[1] ?? "",
                          groupValue: provider.radioGroup,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 3.v),
                          textStyle:
                              CustomTextStyles.bodyMediumPrimaryContainer13,
                          isRightCheck: true,
                          onChange: (value) {
                            provider.changeRadioButton1(value);
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
        onPressed: () {
          navigateToNextPage(context);
        });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack90002,
        child: _buildNext(context));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the topicsScreen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.topicsScreen,
    );
  }
}
